import { Request, Response, NextFunction } from 'express';
import { verifyFirebaseToken } from '../services/firebase';
import { pool } from '../db/pool';
import { v4 as uuidv4 } from 'uuid';
import { AppError } from './errorHandler';
import { DbUser } from '../types';

export async function authenticate(
  req: Request,
  res: Response,
  next: NextFunction
): Promise<void> {
  const authHeader = req.headers.authorization;

  if (!authHeader || !authHeader.startsWith('Bearer ')) {
    return next(new AppError('UNAUTHORIZED', 'Missing or malformed Authorization header.', 401));
  }

  const token = authHeader.slice(7);

  let decoded;
  try {
    decoded = await verifyFirebaseToken(token);
  } catch {
    return next(new AppError('INVALID_TOKEN', 'Firebase token is invalid or expired.', 401));
  }

  try {
    // Upsert: if user exists return it, otherwise create it
    const { rows } = await pool.query<DbUser>(
      `INSERT INTO users (public_id, firebase_uid, email)
       VALUES ($1, $2, $3)
       ON CONFLICT (firebase_uid) DO UPDATE
         SET email = EXCLUDED.email
       RETURNING id, public_id, firebase_uid, email, native_language, target_accent`,
      [uuidv4(), decoded.uid, decoded.email ?? '']
    );

    const user = rows[0];
    req.user = {
      id: user.id,
      publicId: user.public_id,
      firebaseUid: user.firebase_uid,
      email: user.email,
      nativeLanguage: user.native_language,
      targetAccent: user.target_accent,
    };

    next();
  } catch (err) {
    next(new AppError('INTERNAL_SERVER_ERROR', 'Failed to authenticate user.', 500));
  }
}

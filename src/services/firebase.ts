import * as admin from 'firebase-admin';
import { env } from '../config/env';

let app: admin.app.App;

export function getFirebaseAdmin(): admin.app.App {
  if (!app) {
    app = admin.initializeApp({
      credential: admin.credential.cert({
        projectId: env.firebase.projectId,
        clientEmail: env.firebase.clientEmail,
        privateKey: env.firebase.privateKey,
      }),
    });
  }
  return app;
}

export async function verifyFirebaseToken(token: string): Promise<admin.auth.DecodedIdToken> {
  const auth = getFirebaseAdmin().auth();
  return auth.verifyIdToken(token);
}

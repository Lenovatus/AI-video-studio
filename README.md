```markdown
# AI Video Studio

Publisher: Home of Renovations (HR)  
Owner: Lenovatus

AI Video Studio is a starter monorepo for a cross-platform app (Web, Android, iOS) that enables users to create AI-generated videos and characters from prompts or scripts, upload images to influence scenes/characters, and upload/record voiceovers. The app supports English and Swahili, provides email/Google sign-in with verification, and includes Standard and Premium tiers. A special VIP account (lenovatusrevelian@gmail.com) receives full access without payment.

Key features (MVP)
- Prompt/script-based video and character generation (AI integration stubs included)
- Image upload to guide scene or character likeness
- Voice upload/recording for voiceover (transcription & TTS hooks)
- English and Swahili UI (i18n)
- Email + Google sign-in flow with email verification
- Standard and Premium subscription model; VIP user bypasses billing
- Starter mobile app (Expo), web app (Next.js), and backend (Express + TypeScript)

Branding assets
- App icon: assets/icons/1000106576.png  
  Source: https://ucarecdn.com/b78c0b7b-9ae3-4ae6-b7aa-6cac6dadb49e/-/format/auto/
- HR Logo: assets/logos/1000097591.jpg  
  Source: https://ucarecdn.com/ba74382f-30d8-467d-b958-7d5fe7b29725/-/format/auto/

Repository structure
- apps/web — Next.js web client
- apps/mobile — Expo React Native mobile client
- backend — Express API (TypeScript) with auth and video generation stubs
- assets — icons & logos
- .env.example — required environment variables and placeholders

Quickstart (local)
1. Clone or populate repository with provided scaffold.
2. Create assets folders and download branding:
   mkdir -p assets/icons assets/logos
   curl -L -o assets/icons/1000106576.png "https://ucarecdn.com/b78c0b7b-9ae3-4ae6-b7aa-6cac6dadb49e/-/format/auto/"
   curl -L -o assets/logos/1000097591.jpg "https://ucarecdn.com/ba74382f-30d8-467d-b958-7d5fe7b29725/-/format/auto/"

3. Copy .env.example to .env and fill values:
   - SMTP settings (for verification emails)
   - AI provider API keys
   - Optional: Firebase / Storage credentials

4. Install dependencies and start services:
   # from repo root (using npm / pnpm / yarn)
   npm install

   # Start backend
   cd backend
   npm install
   npm run dev

   # Start web
   cd ../apps/web
   npm install
   npm run dev

   # Start mobile (in separate terminal)
   cd ../apps/mobile
   npm install
   expo start

Environment variables
- See .env.example for required variables: SMTP_*, AI_PROVIDER_API_KEY, FIREBASE_*, STORAGE_*.
- Do not commit real secrets. Use your deployment platform's secrets for production.

VIP & Billing
- VIP email: lenovatusrevelian@gmail.com — flagged in backend utils/isVIP.ts and automatically granted premium access for free.
- Billing is not implemented in this starter. Recommend Stripe for subscriptions; mark VIP users as exempt from charges.

Important notes & next integrations
- Replace the in-memory user store with a persistent database (Postgres, MongoDB, or Firestore).
- Replace authentication stubs with a production-ready provider (Firebase Auth or your own JWT-based system).
- Integrate a reliable email provider (SendGrid, SES) for verification and transactional emails.
- Integrate AI services for image/voice/video generation (OpenAI, Stability, DeepBrain, etc.).
- Use cloud storage (S3, Firebase Storage) for uploaded media and generated assets.
- Add background job processing for long-running generation tasks and status endpoints.

Contributing
- Open issues and PRs for bug fixes, feature additions, and AI provider adapters.
- Follow the branch/PR workflow you prefer (feature branches, PR reviews).

License
- This project is available under the MIT License. See LICENSE file.

Contact
- Owner: Lenovatus
- Publisher: Home of Renovations (HR)
```

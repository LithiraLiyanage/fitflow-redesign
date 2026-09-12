# ADR-001: FitFlow Technology Stack

- Status: Accepted for redesign implementation baseline
- Date: 2026-09-12

## Context

FitFlow requires iOS, Android and web access, responsive mobile performance, explainable AI workout planning, image-assisted nutrition tracking, private social challenges, real-time updates, and privacy-sensitive handling of fitness data. Earlier usability work also prioritizes nutrition-entry clarity, privacy visibility, AI explanation, editable recommendations, and low-friction repeated tasks.

## Decision

Use Flutter for the cross-platform client, NestJS for the main API and WebSocket layer, FastAPI for AI/ML inference, PostgreSQL as the system of record, Redis for caching/rate limiting/pub-sub, Auth0 for standards-based authentication, and encrypted object storage for images and exports.

## Consequences

### Positive

- One primary UI codebase across iOS, Android and web.
- Strong separation between product APIs and AI inference workloads.
- Relational integrity for user, consent, plan, nutrition and community data.
- Independent scaling of API, real-time and AI components.
- Mature identity standards and MFA support.

### Trade-offs

- Team must learn Dart/Flutter if it is not already familiar.
- Auth0 cost can increase with scale or advanced enterprise requirements.
- A service split adds deployment/observability overhead.
- Flutter web should be tested carefully for accessibility and performance on target browsers.

## Alternatives considered

React Native, Kotlin Multiplatform and Swift/SwiftUI for frontend; FastAPI-only and Go for main backend; MongoDB, Firestore and DynamoDB for persistence; Firebase Auth, AWS Cognito and Supabase Auth for identity.

## Compliance note

HIPAA/GDPR compliance is not conferred by technology choice alone. Production deployment requires appropriate service eligibility and agreements (where applicable), consent/retention processes, access controls, logging, incident response, data minimization, and documented operational governance.

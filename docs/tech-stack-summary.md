# FitFlow Technology Stack Summary

## Selected stack

| Layer | Selection | Main reason |
|---|---|---|
| Frontend | Flutter | Strong mobile performance with a highly reusable iOS/Android/web codebase and native integration escape hatches. |
| Main API | NestJS | Structured TypeScript architecture, rapid development, WebSocket support, validation and maintainability for a mid-sized team. |
| AI service | FastAPI | Python ML ecosystem, typed APIs and independent scaling for inference workloads. |
| Database | PostgreSQL | ACID integrity, relational constraints, JSONB flexibility, mature security and strong fit for sensitive fitness/consent data. |
| Cache / real-time | Redis | Low-latency cache, rate limiting and pub/sub for horizontal WebSocket scaling. |
| Authentication | Auth0 | Standards-based OIDC/OAuth, MFA, mature SDKs and rapid secure integration. |
| Media | Encrypted object storage | Cost-effective storage for images/exports with signed URLs and lifecycle controls. |

## Key architectural rule

The mobile/web clients never connect directly to the primary database. Authentication is delegated to Auth0, while authorization, consent checks, and business rules are enforced by the NestJS API.

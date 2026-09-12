# FitFlow Backend

NestJS/TypeScript starter area for the authoritative FitFlow product API.

Responsibilities:
- Validate Auth0 access tokens
- Enforce ownership, role, consent and challenge-audience authorization
- Manage workouts, nutrition, progress, privacy and community business rules
- Publish authorized real-time events through WebSockets/Redis
- Call the FastAPI AI service through authenticated internal requests
- Keep durable application state in PostgreSQL

The client must not connect directly to the primary database.

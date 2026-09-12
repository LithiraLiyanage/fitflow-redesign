# FitFlow Redesign

Prepared for **IT3060 - Human Computer Interaction, Year 3 Semester 2 (2026)**  
Student: **Liyanage L.D**  
Student ID: **IT23658318**

FitFlow Redesign is the Lab 05 technology-selection and architecture repository for the FitFlow fitness-application redesign. It continues the HCI work from Labs 01-04 and supports adaptive workout planning, faster nutrition tracking, private social challenges, clearer progress feedback and explicit privacy controls across iOS, Android and web.

## Selected technology stack

- **Frontend:** Flutter / Dart
- **Main backend:** NestJS / TypeScript
- **AI microservice:** FastAPI / Python
- **Primary database:** PostgreSQL
- **Cache / real-time fan-out:** Redis
- **Authentication:** Auth0 with OIDC/OAuth 2.0 and MFA where appropriate
- **Media:** Encrypted object storage with private buckets and signed URLs
- **CI/CD:** GitHub Actions

## Why this stack

The decision is FitFlow-specific. It prioritizes high mobile performance, cross-platform code reuse, server-enforced privacy, explainable AI integration, maintainability and low-friction repeated tasks. The detailed weighted matrices are in [`docs/comparison-matrix.md`](docs/comparison-matrix.md).

## Repository structure

```text
fitflow-redesign/
├── frontend/
│   ├── lib/main.dart
│   ├── pubspec.yaml
│   └── README.md
├── backend/
│   ├── src/main.ts
│   ├── src/app.module.ts
│   ├── package.json
│   ├── tsconfig.json
│   └── README.md
├── ai-service/
│   ├── app/main.py
│   ├── requirements.txt
│   └── README.md
├── docs/
│   ├── architecture/
│   │   ├── fitflow-high-level-architecture.png
│   │   └── fitflow-architecture.dot
│   ├── adr/ADR-001-technology-stack.md
│   ├── frontend-comparison.md
│   ├── backend-database-auth-comparison.md
│   ├── comparison-matrix.md
│   ├── tech-stack-summary.md
│   ├── github-setup.md
│   └── lab-report/IT23658318_Lab_05_Completed.docx
├── .github/workflows/ci.yml
├── .env.example
├── .gitignore
└── README.md
```

## Core data flows

1. **Personalized workout:** Flutter -> NestJS -> FastAPI -> PostgreSQL -> Flutter. The response includes explanation factors and editable/regeneratable user controls.
2. **Private social challenge:** Flutter -> NestJS authorization/consent checks -> PostgreSQL commit -> Redis/WebSocket event -> approved participants only.
3. **Nutrition tracking:** Flutter camera/search -> NestJS -> food data or FastAPI inference -> user confirms portion -> PostgreSQL. Media is private and accessed through short-lived signed URLs.

## Security and privacy principles

- TLS for network traffic and encryption at rest.
- OIDC/OAuth 2.0 authentication; MFA for higher-risk contexts where appropriate.
- Server-side authorization on every sensitive operation.
- Least privilege, data minimization, explicit consent, revocable sharing and audit logging.
- No sensitive health or identity data in ordinary application logs.
- HIPAA/GDPR readiness depends on deployment context, eligible service plans/agreements, configuration, governance and operating procedures; no framework or database is compliant by itself.

## Architecture

![FitFlow high-level architecture](docs/architecture/fitflow-high-level-architecture.png)

See [`docs/adr/ADR-001-technology-stack.md`](docs/adr/ADR-001-technology-stack.md) for the Architecture Decision Record.

## CI

The initial GitHub Actions workflow verifies all mandatory Lab 05 repository artifacts and starter scaffolds. Implementation-specific Flutter/NestJS/Python lint/test jobs can be enabled as the project becomes executable.

## Branching

Use `main` as the protected default branch. For a team repository, require pull requests, at least one approval, passing checks and no force pushes to `main`.

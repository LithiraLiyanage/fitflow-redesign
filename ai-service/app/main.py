from fastapi import FastAPI
from pydantic import BaseModel, Field

app = FastAPI(title="FitFlow AI Service", version="0.1.0")


class WorkoutRequest(BaseModel):
    goal: str
    days_per_week: int = Field(ge=1, le=7)
    fitness_level: str
    available_minutes: int = Field(ge=10, le=120)


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}


@app.post("/workout-plan")
def workout_plan(request: WorkoutRequest) -> dict:
    """Demonstration endpoint only; replace with the approved model/inference pipeline."""
    return {
        "status": "prototype",
        "plan": {
            "goal": request.goal,
            "days_per_week": request.days_per_week,
            "fitness_level": request.fitness_level,
            "available_minutes": request.available_minutes,
        },
        "explanation": [
            "Plan output is a scaffold for Lab 05 architecture validation.",
            "Production recommendations must include safety constraints and user override controls.",
        ],
    }

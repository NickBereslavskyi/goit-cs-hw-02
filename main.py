from fastapi import FastAPI
from conf.db import SQLALCHEMY_DATABASE_URL
import sqlalchemy

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Welcome to FastAPI!"}

@app.get("/check-db")
async def check_db():
    try:
        engine = sqlalchemy.create_engine(SQLALCHEMY_DATABASE_URL)
        with engine.connect() as conn:
            conn.execute("SELECT 1")
        return {"status": "Database is available!"}
    except Exception as e:
        return {"status": "Database connection failed", "error": str(e)}

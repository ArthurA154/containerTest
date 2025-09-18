from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"msg": "Hallo 👋 dein erstes Backend läuft!"}

@app.get("/health")
def health():
    return {"ok": True}

# Task API with Postgres + Docker

## What changed from the SQLite version
Only `db.js` changed to connect to Postgres instead of SQLite. All routes 
in `index.js` use the same `db.query(...)` pattern with SQL, and the API's 
URLs, request bodies, and responses are unchanged. This proves the 
architecture: swapping storage is a one-file change.

## How to run
1. Copy `.env.example` to `.env`
2. Run: docker compose up --build
3. The app will be available at http://localhost:3000

## How persistence was proven
1. Created a task via POST /tasks
2. Stopped the containers (Ctrl+C)
3. Restarted with docker compose up
4. Called GET /tasks again — the task was still there, proving Postgres 
   data survives both app and container restarts thanks to the Docker volume.

## Stack
- Node.js + Express
- PostgreSQL (via Docker, with a persistent volume)
- Connection string stored in .env (gitignored), shape documented in .env.example
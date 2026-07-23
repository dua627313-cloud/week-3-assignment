# week-3-assignment
# Task API with SQLite

## Why SQLite
SQLite was chosen because it requires no separate database server — it stores 
all data in a single file (`tasks.db`), which makes it perfect for a small 
project like this. The database and table are created automatically the 
first time the app runs.

## Database location
The database file `tasks.db` is created automatically in the project root 
the first time you run the app.

## Library used
This project uses Node's built-in `node:sqlite` module instead of 
`better-sqlite3`, because `better-sqlite3` requires compiling native C++ 
code with Visual Studio Build Tools, which wasn't available in this 
environment. `node:sqlite` is a built-in module in Node.js 22+ and requires 
no extra installation.

## How to run
npm install
node index.js

The server will start at http://localhost:3000

## API Endpoints
- GET /tasks — returns all tasks
- GET /tasks/:id — returns a single task
- POST /tasks — creates a new task (requires "title" in body)
- PUT /tasks/:id — updates a task
- DELETE /tasks/:id — deletes a task

## Example SQL query
SELECT * FROM tasks;

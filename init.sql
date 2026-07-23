CREATE TABLE IF NOT EXISTS tasks (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  done BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO tasks (title, done)
SELECT 'Buy milk', false
WHERE NOT EXISTS (SELECT 1 FROM tasks);

INSERT INTO tasks (title, done)
SELECT 'Walk the dog', false
WHERE NOT EXISTS (SELECT 1 FROM tasks WHERE title = 'Walk the dog');

INSERT INTO tasks (title, done)
SELECT 'Finish assignment', false
WHERE NOT EXISTS (SELECT 1 FROM tasks WHERE title = 'Finish assignment');
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS todo (
  id uuid not null default uuid_generate_v4(),
  title text not null,
  is_done boolean not null default false,
  created_at timestamp not null default now(),
  constraint todo_pk primary key (id)
);


-- ALTER TABLE todo ALTER COLUMN is_done SET DEFAULT false;

-- +goose Up
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    hashed_password TEXT NOT NULL,
    is_admin BOOLEAN NOT NULL,
    is_bod BOOLEAN NOT NULL,
    is_simmer BOOLEAN NOT NULL,
    is_updater BOOLEAN NOT NULL
);

-- +goose Down
DROP TABLE users;

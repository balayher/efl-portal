-- +goose Up
CREATE TABLE positions (
    id SERIAL PRIMARY KEY,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL,
    name TEXT NOT NULL,
    abbreviation TEXT NOT NULL,
    side TEXT NOT NULL
);

-- +goose Down
DROP TABLE positions;

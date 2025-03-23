-- +goose Up
CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL,
    city TEXT NOT NULL,
    mascot TEXT NOT NULL,
    ddspf_id INT NOT NULL
);

-- +goose Down
DROP TABLE teams;

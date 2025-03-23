-- +goose Up
CREATE TABLE archetypes (
    id SERIAL PRIMARY KEY,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL,
    name TEXT NOT NULL,
    position_id INT NOT NULL
    REFERENCES positions(id)
    ON DELETE CASCADE,
    max_str INT NOT NULL,
    max_agi INT NOT NULL,
    max_arm INT NOT NULL,
    max_int INT NOT NULL,
    max_acc INT NOT NULL,
    max_tck INT NOT NULL,
    max_spe INT NOT NULL,
    max_hnd INT NOT NULL,
    max_pbl INT NOT NULL,
    max_rbl INT NOT NULL,
    max_kdi INT NOT NULL,
    max_kac INT NOT NULL,
    max_end INT NOT NULL,
    min_height INT NOT NULL,
    max_height INT NOT NULL,
    min_weight INT NOT NULL,
    max_creation_weight INT NOT NULL,
    max_weight INT NOT NULL
);

-- +goose Down
DROP TABLE archetypes;

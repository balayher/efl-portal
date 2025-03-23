-- +goose Up
CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL,
    user_id INT NOT NULL
    REFERENCES users(id)
    ON DELETE CASCADE,
    archetype_id INT NOT NULL
    REFERENCES archetypes(id)
    ON DELETE CASCADE,
    team_id INT NOT NULL
    REFERENCES teams(id)
    ON DELETE CASCADE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    strength INT NOT NULL,
    agility INT NOT NULL,
    arm INT NOT NULL,
    intelligence INT NOT NULL,
    accuracy INT NOT NULL,
    tackling INT NOT NULL,
    speed INT NOT NULL,
    hands INT NOT NULL,
    pass_blocking INT NOT NULL,
    run_blocking INT NOT NULL,
    kick_distance INT NOT NULL,
    kick_accuracy INT NOT NULL,
    endurance INT NOT NULL,
    height INT NOT NULL,
    weight INT NOT NULL,
    jersey INT NOT NULL,
    total_tpe INT NOT NULL,
    applied_tpe INT NOT NULL,
    regressed_tpe INT NOT NULL,
    active_status TEXT NOT NULL,
    contract_years INT NOT NULL,
    contract_salary INT NOT NULL,
    money INT NOT NULL,
    equipment_1 TEXT NOT NULL,
    equipment_2 TEXT NOT NULL,
    equipment_3 TEXT NOT NULL
);

-- +goose Down
DROP TABLE players;

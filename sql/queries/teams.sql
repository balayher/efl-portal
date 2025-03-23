-- name: CreateTeam :one
INSERT INTO teams (
    created_at, 
    updated_at, 
    city, 
    mascot,
    ddspf_id
    )
VALUES (
    NOW(),
    NOW(),
    $1,
    $2,
    $3
)
RETURNING *;

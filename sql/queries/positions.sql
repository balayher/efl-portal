-- name: CreatePosition :one
INSERT INTO positions (
    created_at, 
    updated_at, 
    name, 
    abbreviation,
    side
    )
VALUES (
    NOW(),
    NOW(),
    $1,
    $2,
    $3
)
RETURNING *;

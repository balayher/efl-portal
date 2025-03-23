-- name: CreateUser :one
INSERT INTO users (
    created_at, 
    updated_at, 
    username, 
    hashed_password,
    is_admin,
    is_bod,
    is_simmer,
    is_updater
    )
VALUES (
    NOW(),
    NOW(),
    $1,
    $2,
    false,
    false,
    false,
    false
)
RETURNING *;

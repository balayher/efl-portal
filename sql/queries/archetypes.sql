-- name: CreateArchetype :one
INSERT INTO archetypes (
    created_at, 
    updated_at, 
    name, 
    position_id,
    max_str,
    max_agi,
    max_arm,
    max_int,
    max_acc,
    max_tck,
    max_spe,
    max_hnd,
    max_pbl,
    max_rbl,
    max_kdi,
    max_kac,
    max_end,
    min_height,
    max_height,
    min_weight,
    max_creation_weight,
    max_weight
    )
VALUES (
    NOW(),
    NOW(),
    $1,
    $2,
    $3,
    $4,
    $5,
    $6,
    $7,
    $8,
    $9,
    $10,
    $11,
    $12,
    $13,
    $14,
    $15,
    $16,
    $17,
    $18,
    $19,
    $20
)
RETURNING *;

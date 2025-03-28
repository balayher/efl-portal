// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.25.0
// source: archetypes.sql

package database

import (
	"context"
)

const createArchetype = `-- name: CreateArchetype :one
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
RETURNING id, created_at, updated_at, name, position_id, max_str, max_agi, max_arm, max_int, max_acc, max_tck, max_spe, max_hnd, max_pbl, max_rbl, max_kdi, max_kac, max_end, min_height, max_height, min_weight, max_creation_weight, max_weight
`

type CreateArchetypeParams struct {
	Name              string
	PositionID        int32
	MaxStr            int32
	MaxAgi            int32
	MaxArm            int32
	MaxInt            int32
	MaxAcc            int32
	MaxTck            int32
	MaxSpe            int32
	MaxHnd            int32
	MaxPbl            int32
	MaxRbl            int32
	MaxKdi            int32
	MaxKac            int32
	MaxEnd            int32
	MinHeight         int32
	MaxHeight         int32
	MinWeight         int32
	MaxCreationWeight int32
	MaxWeight         int32
}

func (q *Queries) CreateArchetype(ctx context.Context, arg CreateArchetypeParams) (Archetype, error) {
	row := q.db.QueryRowContext(ctx, createArchetype,
		arg.Name,
		arg.PositionID,
		arg.MaxStr,
		arg.MaxAgi,
		arg.MaxArm,
		arg.MaxInt,
		arg.MaxAcc,
		arg.MaxTck,
		arg.MaxSpe,
		arg.MaxHnd,
		arg.MaxPbl,
		arg.MaxRbl,
		arg.MaxKdi,
		arg.MaxKac,
		arg.MaxEnd,
		arg.MinHeight,
		arg.MaxHeight,
		arg.MinWeight,
		arg.MaxCreationWeight,
		arg.MaxWeight,
	)
	var i Archetype
	err := row.Scan(
		&i.ID,
		&i.CreatedAt,
		&i.UpdatedAt,
		&i.Name,
		&i.PositionID,
		&i.MaxStr,
		&i.MaxAgi,
		&i.MaxArm,
		&i.MaxInt,
		&i.MaxAcc,
		&i.MaxTck,
		&i.MaxSpe,
		&i.MaxHnd,
		&i.MaxPbl,
		&i.MaxRbl,
		&i.MaxKdi,
		&i.MaxKac,
		&i.MaxEnd,
		&i.MinHeight,
		&i.MaxHeight,
		&i.MinWeight,
		&i.MaxCreationWeight,
		&i.MaxWeight,
	)
	return i, err
}

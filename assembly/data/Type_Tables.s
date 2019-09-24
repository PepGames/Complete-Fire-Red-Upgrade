.thumb
.global gTypeEffectiveness
.global gMoveMenuInfoIcons

.include "../defines"
/*
type_tables.s
	type effectiveness table, type icon definitions
*/


.equ TYPE_MUL_NO_EFFECT, 0
.equ TYPE_MUL_NOT_EFFECTIVE, 5
.equ TYPE_MUL_NORMAL, 10
.equ TYPE_MUL_SUPER_EFFECTIVE, 20

.equ TYPE_FORESIGHT, 0xFE
.equ TYPE_ENDTABLE, 0xFF

@;format: attacking type, defending type, damage multiplier
@;the multiplier is a (decimal) fixed-point number:
@×2.0 TYPE_MUL_SUPER_EFFECTIVE
@×1.0 TYPE_MUL_NORMAL
@;×0.5 TYPE_MUL_NOT_EFFECTIVE
@;×0.0 TYPE_MUL_NO_EFFECT

gTypeEffectiveness:
.byte TYPE_NORMAL, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_NORMAL, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_FIRE, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIRE, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIRE, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIRE, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIRE, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIRE, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIRE, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIRE, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE

.byte TYPE_WATER, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_WATER, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_WATER, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_WATER, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_WATER, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_WATER, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_ELECTRIC, TYPE_WATER, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ELECTRIC, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ELECTRIC, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ELECTRIC, TYPE_GROUND, TYPE_MUL_NO_EFFECT
.byte TYPE_ELECTRIC, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ELECTRIC, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_GRASS, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GRASS, TYPE_WATER, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GRASS, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GRASS, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GRASS, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GRASS, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GRASS, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GRASS, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GRASS, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GRASS, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_ICE, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ICE, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ICE, TYPE_ICE, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ICE, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ICE, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ICE, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ICE, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ICE, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_FIGHTING, TYPE_NORMAL, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_PSYCHIC, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_FAIRY, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FIGHTING, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE

.byte TYPE_POISON, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_POISON, TYPE_FAIRY, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_POISON, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_POISON, TYPE_GROUND, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_POISON, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_POISON, TYPE_GHOST, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_POISON, TYPE_STEEL, TYPE_MUL_NO_EFFECT

.byte TYPE_GROUND, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GROUND, TYPE_ELECTRIC, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GROUND, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GROUND, TYPE_POISON, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GROUND, TYPE_FLYING, TYPE_MUL_NO_EFFECT
.byte TYPE_GROUND, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GROUND, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GROUND, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE

.byte TYPE_FLYING, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FLYING, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FLYING, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FLYING, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FLYING, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FLYING, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_PSYCHIC, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_PSYCHIC, TYPE_POISON, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_PSYCHIC, TYPE_PSYCHIC, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_PSYCHIC, TYPE_DARK, TYPE_MUL_NO_EFFECT
.byte TYPE_PSYCHIC, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_BUG, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_BUG, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_BUG, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_BUG, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_BUG, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_BUG, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_BUG, TYPE_GHOST, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_BUG, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_BUG, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_BUG, TYPE_FAIRY, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_ROCK, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ROCK, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ROCK, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ROCK, TYPE_GROUND, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_ROCK, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ROCK, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_ROCK, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_GHOST, TYPE_NORMAL, TYPE_MUL_NO_EFFECT
.byte TYPE_GHOST, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_GHOST, TYPE_DARK, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_GHOST, TYPE_GHOST, TYPE_MUL_SUPER_EFFECTIVE

.byte TYPE_DRAGON, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_DRAGON, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_DRAGON, TYPE_FAIRY, TYPE_MUL_NO_EFFECT

.byte TYPE_DARK, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_DARK, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_DARK, TYPE_GHOST, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_DARK, TYPE_DARK, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_DARK, TYPE_FAIRY, TYPE_MUL_NOT_EFFECTIVE

.byte TYPE_STEEL, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_STEEL, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_STEEL, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_STEEL, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_STEEL, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_STEEL, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_STEEL, TYPE_FAIRY, TYPE_MUL_SUPER_EFFECTIVE

.byte TYPE_FAIRY, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FAIRY, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FAIRY, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
.byte TYPE_FAIRY, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FAIRY, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE
.byte TYPE_FAIRY, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE

.byte TYPE_FORESIGHT, TYPE_FORESIGHT, TYPE_MUL_NO_EFFECT
.byte TYPE_NORMAL, TYPE_GHOST, TYPE_MUL_NO_EFFECT
.byte TYPE_FIGHTING, TYPE_GHOST, TYPE_MUL_NO_EFFECT
.byte TYPE_ENDTABLE, TYPE_ENDTABLE, TYPE_MUL_NO_EFFECT

.macro typeicon width height offset
.byte \width
.byte \height
.hword \offset
.endm

gMoveMenuInfoIcons:
typeicon 12, 12, 0x00       @ Unused
typeicon 32, 12, 0x20       @ Normal icon
typeicon 32, 12, 0x64       @ Fight icon
typeicon 32, 12, 0x60       @ Flying icon
typeicon 32, 12, 0x80       @ Poison icon
typeicon 32, 12, 0x48       @ Ground icon
typeicon 32, 12, 0x44       @ Rock icon
typeicon 32, 12, 0x6C       @ Bug icon
typeicon 32, 12, 0x68       @ Ghost icon
typeicon 32, 12, 0x88       @ Steel icon
typeicon 32, 12, 0xA4       @ ??? (Mystery) icon
typeicon 32, 12, 0x24       @ Fire icon
typeicon 32, 12, 0x28       @ Water icon
typeicon 32, 12, 0x2C       @ Grass icon
typeicon 32, 12, 0x40       @ Electric icon
typeicon 32, 12, 0x84       @ Psychic icon
typeicon 32, 12, 0x4C       @ Ice icon
typeicon 32, 12, 0xA0       @ Dragon icon
typeicon 32, 12, 0x8C       @ Dark icon
typeicon 42, 12, 0xA8       @ -Type- icon
typeicon 42, 12, 0xC0       @ -Power- icon
typeicon 42, 12, 0xC8       @ -Accuracy- icon
typeicon 42, 12, 0xE0       @ -PP- icon
typeicon 42, 12, 0xE8       @ -Effect- icon
typeicon 32, 12, 0x100      @ Fairy icon
typeicon  8,  8, 0xAE       @ Unused (Small white pokeball)
typeicon  8,  8, 0xAF       @ Unused (Small dark pokeball)


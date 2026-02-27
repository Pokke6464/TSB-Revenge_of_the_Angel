#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/big
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/

# オブジェクト8051番をデータ指定した上で召喚する
    data modify storage api: Argument.ID set value 8051
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.ShockWave
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute rotated as @s positioned ^ ^ ^2 run function api:object/summon

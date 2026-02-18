#> asset:mob/0055.hetukedah/tick/skill/coldwave/attack
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/coldwave/tick

# ループカウント加算
    scoreboard players add @s 1J.LoopCount 1

# 演出
    particle poof ~ ~1.5 ~ 0.1 0.1 0.1 0.5 30 force @a[distance=..30]
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.75
    execute as @e[limit=2] as @e[limit=2] as @e[limit=2] run playsound block.amethyst_block.chime hostile @a ~ ~ ~ 2 1

# 冷気を5つ召喚
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon

# 難易度Normalだと弱すぎるので追加で3つ召喚
    execute if predicate api:global_vars/difficulty/min/2_hard run return fail
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 8040
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1 ~ run function api:object/summon

#> asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/attack
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/tick

# 爆発ダメージ
    data modify storage api: Argument.Damage set value 15.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sの膨大な魔力に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    execute if predicate api:global_vars/difficulty/max/2_hard as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
    execute if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..12] run function api:damage/
    function api:damage/reset

# 衝撃波を召喚
    data modify storage api: Argument.ID set value 8042
    data modify storage api: Argument.FieldOverride.SkipTick set value 15
    data modify storage api: Argument.FieldOverride.HitboxDelay set value 16
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 6.5
    execute positioned ~ ~1.1 ~ run function api:object/summon

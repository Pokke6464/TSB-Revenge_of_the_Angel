#> asset:mob/0055.hetukedah/tick/skill/explosion/explosion
#
# 魔法陣爆発
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 演出
    function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/shape
    particle minecraft:lava ~ ~ ~ 2 0.1 2 0 30
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
    playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
    execute if predicate api:global_vars/difficulty/min/2_hard run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 2

# ハメ防止
    #execute if predicate api:area/is_breakable run function asset:mob/0055.hetukedah/tick/skill/explosion/break_block

# ダメージ
    execute if entity @s[tag=!1J.Phase.2] run data modify storage api: Argument.Damage set value 7.5f
    execute if entity @s[tag=1J.Phase.2] run data modify storage api: Argument.Damage set value 8.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function asset:mob/0055.hetukedah/tick/skill/explosion/levitation/normal
    function api:damage/reset

# 薙ぎ払いタイプならここで止める
    execute if entity @s[tag=1J.Skill.Explosion.SweepingType] run return fail

# 追加で爆発を起こす。難易度Hard以上なら更に増える
    execute rotated ~0 ~ positioned ^ ^ ^8 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~45 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~-45 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute rotated ~90 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute rotated ~-90 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~135 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~-135 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute rotated ~180 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini

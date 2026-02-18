#> asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
#
# ハード限定ミニ爆発
#
# @within function 
#   asset:mob/0055.hetukedah/tick/skill/explosion/explosion
#   asset:mob/0055.hetukedah/tick/skill/explosion/sweeping

# 演出
    particle minecraft:lava ~ ~ ~ 2 0.1 2 0 15
    particle minecraft:explosion ~ ~ ~ 1.25 0 1.25 0 5 force @a[distance=..30]

# ダメージ
    execute if entity @s[tag=!1J.Phase.2] run data modify storage api: Argument.Damage set value 5.5f
    execute if entity @s[tag=1J.Phase.2] run data modify storage api: Argument.Damage set value 6.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0055.hetukedah/tick/skill/explosion/levitation/mini
    function api:damage/reset

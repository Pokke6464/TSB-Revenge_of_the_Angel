#> asset:mob/0055.hetukedah/tick/skill/flamethrower/prepare_reverse
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/flamethrower/tick

# 演出
    particle dust -0.01 -1 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 50 force @a[distance=..30]
    particle flame ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=..30]
    playsound entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# タグの付与
    tag @s add 1J.PrepareReverse

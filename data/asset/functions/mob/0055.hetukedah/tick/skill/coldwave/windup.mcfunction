#> asset:mob/0055.hetukedah/tick/skill/coldwave/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/coldwave/tick

# 演出
    particle minecraft:dust 0 1 1 2 ~ ~1 ~ 0.5 0.5 0.5 0 75 force @a[distance=..30]
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 2 0.75
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# ループカウントを0に
    scoreboard players set @s 1J.LoopCount 0

# NoAIにする
    data merge entity @s {NoAI:1b}

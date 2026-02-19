#> asset:mob/0055.hetukedah/tick/skill/charge/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/tick

# 演出
    particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 75 force @a[distance=..30]
    particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0 25 force @a[distance=..30]
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# ループカウントを0に
    scoreboard players set @s 1J.LoopCount 0

# フェーズ2では難易度に応じてループ回数にブレを出す
    execute if predicate api:global_vars/difficulty/max/2_hard store result score @s[tag=1J.Phase.2] 1J.LoopCount run random value -1..0
    execute if predicate api:global_vars/difficulty/min/3_blessless store result score @s[tag=1J.Phase.2] 1J.LoopCount run random value -2..1

# NoAIにする
    data merge entity @s {NoAI:1b}

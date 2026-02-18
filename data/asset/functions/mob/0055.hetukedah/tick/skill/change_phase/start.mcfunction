#> asset:mob/0055.hetukedah/tick/skill/change_phase/start
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/change_phase/tick

# 演出
    particle explosion ~ ~1.5 ~ 0 0 0 1 5

# NoAIにする
    data merge entity @s {NoAI:1b}

# 無敵化
    data merge entity @s {Invulnerable:1b}
    tag @s add Uninterferable

# プレイヤーに向ける
    execute facing entity @p[tag=!PlayerShouldInvulnerable] feet run tp @s ~ ~ ~ ~ 0

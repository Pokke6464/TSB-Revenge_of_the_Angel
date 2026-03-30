#> asset:mob/0055.hetukedah/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/55/hurt

# super.hurt
    function asset:mob/super.hurt

# 演出
    playsound entity.ravager.hurt hostile @a ~ ~ ~ 1 1.5
    execute if entity @s[tag=!1J.Phase.2] run particle minecraft:dust 1 0 1 2 ~ ~1.3 ~ 0.5 0.5 0.5 0 10 force @a[distance=..30]
    execute if entity @s[tag=!1J.Phase.2] run particle minecraft:dust 0.5 0 0.5 2 ~ ~1.3 ~ 0.8 0.8 0.8 0 5 force @a[distance=..30]
    # 後半戦
        execute if entity @s[tag=1J.Phase.2] positioned ~ ~1 ~ run particle minecraft:dust 0 0 0 2 ~ ~1.3 ~ 0.5 0.5 0.5 0 10 force @a[distance=..30]
        execute if entity @s[tag=1J.Phase.2] positioned ~ ~1 ~ run particle minecraft:dust 0.5 0.5 0.5 2 ~ ~1.3 ~ 0.8 0.8 0.8 0 5 force @a[distance=..30]

# フェーズの移行
    execute if entity @s[tag=!1J.HealthLess50Per] run function asset:mob/0055.hetukedah/hurt/change_phase

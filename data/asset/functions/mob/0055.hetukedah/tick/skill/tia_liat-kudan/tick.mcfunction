#> asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/tick
#
# 魔力爆発
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/windup

# 演出
    function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/

# 衝撃波を避けられるように跳躍力上昇を付与
    execute if score @s General.Mob.Tick matches 230 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/effect_jumpboost

# NoAIにする
    execute if score @s General.Mob.Tick matches 430 run data merge entity @s {NoAI:1b}

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 430 facing entity @p[tag=!PLayerShouldInvulnerable,distance=..64] feet run tp @s ~ ~ ~ ~ 0

# 攻撃
    execute if score @s General.Mob.Tick matches 480 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/attack

# リセット
    execute if score @s General.Mob.Tick matches 540.. run function asset:mob/0055.hetukedah/tick/reset

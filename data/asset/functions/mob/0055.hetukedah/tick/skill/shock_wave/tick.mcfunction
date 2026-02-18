#> asset:mob/0055.hetukedah/tick/skill/shock_wave/tick
#
# 衝撃波攻撃
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/shock_wave/windup

# 演出
    function asset:mob/0055.hetukedah/tick/skill/shock_wave/vfx/

# 衝撃波を避けられるように跳躍力上昇を付与
    execute if score @s General.Mob.Tick matches 110 run function asset:mob/0055.hetukedah/tick/skill/shock_wave/effect_jumpboost

# NoAIにする
    execute if score @s General.Mob.Tick matches 190 run data merge entity @s {NoAI:1b}

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 190 facing entity @p[tag=!PLayerShouldInvulnerable,distance=..64] feet run tp @s ~ ~ ~ ~ 0

# 攻撃
    execute if score @s General.Mob.Tick matches 235 run function asset:mob/0055.hetukedah/tick/skill/shock_wave/attack

# リセット
    execute if score @s General.Mob.Tick matches 260.. run function asset:mob/0055.hetukedah/tick/reset

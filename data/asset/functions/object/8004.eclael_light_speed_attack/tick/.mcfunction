#> asset:object/8004.eclael_light_speed_attack/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8004/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if score @s General.Object.Tick matches 30 run function asset:object/8004.eclael_light_speed_attack/tick/attack

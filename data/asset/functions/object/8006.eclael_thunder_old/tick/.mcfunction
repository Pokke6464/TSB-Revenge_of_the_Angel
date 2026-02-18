#> asset:object/8006.eclael_thunder_old/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8006/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if score @s General.Object.Tick matches 1 run function asset:object/8006.eclael_thunder_old/tick/attack

# 終了
    kill @s[scores={General.Object.Tick=1..}]
#> asset:object/8009.eclael_prediction_line/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8009/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 表示(遅らせて表示しないと一瞬真上を向いているのが見えることがある)
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s item set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20493}}

# 消滅処理
    kill @s[scores={General.Object.Tick=47..}]

#> asset:object/8005.eclael_thunder_chain/tick/effect_vector
#
# Objectのtick時の処理
#
# @within asset:object/8005.eclael_thunder_chain/tick/

# スコアを加算
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 7.. run scoreboard players set @s General.Object.Tick 1

# テキストの色を変える
    execute if score @s General.Object.Tick matches 1 run data modify entity @s text set value '[{"text":">>","color":"#00FFA2","bold":true}]'
    execute if score @s General.Object.Tick matches 2 run data modify entity @s text set value '[{"text":">","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true}]'
    execute if score @s General.Object.Tick matches 3 run data modify entity @s text set value '[{"text":">>","color":"#74B0AC","bold":true}]'
    execute if score @s General.Object.Tick matches 6 run data modify entity @s text set value '[{"text":">","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true}]'
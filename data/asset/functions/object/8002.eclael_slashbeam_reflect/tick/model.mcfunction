#> asset:object/8002.eclael_slashbeam_reflect/tick/model
#
# Mobのtick時の処理
#
# @within function asset:object/8002.eclael_slashbeam_reflect/tick/

# アニメーション
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches ..0 run data modify entity @s item.tag.CustomModelData set value 80000
    execute if score $Interval Temporary matches 1 run data modify entity @s item.tag.CustomModelData set value 80001
    execute if score $Interval Temporary matches 2.. run data modify entity @s item.tag.CustomModelData set value 80002
    scoreboard players reset $Interval Temporary

#> asset:object/2190.eclael_slashbeam/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2190/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 1
    # execute unless entity @s[tag=2190.IsInverse] rotated ~90 ~-40 run function asset:object/2190.eclael_slashbeam/tick/particle
    # execute if entity @s[tag=2190.IsInverse] rotated ~90 ~40 run function asset:object/2190.eclael_slashbeam/tick/particle
    function asset:object/2190.eclael_slashbeam/tick/model

# 移動・攻撃処理 / 低速タイプはヒット時に少し加速(多段ヒット防止)
    execute positioned ^ ^ ^1 run function asset:object/2190.eclael_slashbeam/tick/hit
    execute unless entity @s[tag=2190.SlowSpeed] run tp @s ^ ^ ^2
    execute if entity @s[tag=2190.SlowSpeed] run tp @s ^ ^ ^0.8
    execute if entity @s[tag=2190.SlowSpeed] if entity @a[tag=2190.Hit] run tp @s ^ ^ ^2.5
    execute if entity @a[tag=2190.Hit] as @a[tag=2190.Hit] at @s run function asset:object/2190.eclael_slashbeam/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=35..}]

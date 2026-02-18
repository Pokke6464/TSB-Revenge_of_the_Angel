#> asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/thunder_attack_check.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/main

# 一定間隔で実行
    scoreboard players operation $Temp Temporary = @s 93.AnimationTimer
    $scoreboard players operation $Temp Temporary %= $$(Interval) Const
    execute unless score $Temp Temporary matches 0 run return run scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp Temporary

# 攻撃
    $function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"$(Small)"}

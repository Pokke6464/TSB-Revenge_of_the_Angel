#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m
#
# アニメーションのイベントハンドラ 後半・全体落雷 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/main

# 一定間隔で実行
    scoreboard players operation $Temp Temporary = @s 93.AnimationTimer
    $scoreboard players operation $Temp Temporary %= $$(Interval) Const
    execute unless score $Temp Temporary matches 0 run return run scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp Temporary

# 攻撃
    $function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_$(Attack)
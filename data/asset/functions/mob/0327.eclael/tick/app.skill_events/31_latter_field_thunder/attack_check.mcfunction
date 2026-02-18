#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack_check
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main

# 一定間隔で実行
    scoreboard players operation $Temp Temporary = @s 93.AnimationTimer
    scoreboard players operation $Temp Temporary %= $6 Const
    execute unless score $Temp Temporary matches 0 run return run scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp Temporary

# 攻撃 / 予告が動く雷が強いため全員攻撃から2 or 3人に攻撃に
    execute if predicate lib:random_pass_per/50 at @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=2] run return run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=3] run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack
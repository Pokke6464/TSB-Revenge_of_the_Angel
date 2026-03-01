#> asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/main

#> Private
# @private
    #declare score_holder $Temp
    #declare score_holder $Random

# 一定間隔で実行
    scoreboard players operation $Temp Temporary = @s 93.AnimationTimer
    $scoreboard players operation $Temp Temporary %= $$(Interval) Const
    execute unless score $Temp Temporary matches 0 run return run scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp Temporary

# 乱数生成
    execute if predicate api:global_vars/difficulty/max/2_hard store result score $Random Temporary run random value 0..3
    execute if predicate api:global_vars/difficulty/min/3_blessless unless score @s 93.AnimationTimer matches 261.. store result score $Random Temporary run random value 0..4
    # Blesslessの最後の加速時は青色の割合を増やす
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 93.AnimationTimer matches 261.. store result score $Random Temporary run random value 0..6

# 乱数によって異なる色、位置、角度で攻撃 / 往復しているためずらす角度は+180している
    # 0.空色 / 自機狙い。次の攻撃の角度を少しずらす
        execute if score $Random Temporary matches 0 positioned ^ ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:11206655,RotY:185}
    # 1.緑色 / かなりの自機外し。次の攻撃の角度をずらす
        execute if score $Random Temporary matches 1 positioned ^6 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:11861940,RotY:170}
    # 2.紫色 / ずれる方向や角度が反対な以外は緑色と同じ
        execute if score $Random Temporary matches 2 positioned ^-6 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:10055935,RotY:190}
    # 3.桃色 / 少しだけずれた自機狙い。次の攻撃の角度を大きくずらす
        execute if score $Random Temporary matches 3 positioned ^1 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:16750335,RotY:150}
    # 4~6.青色 / ジャンプしないと当たらない高さに攻撃。それ以外はずれる方向や角度が反対な以外は桃色と同じ
        execute if score $Random Temporary matches 4 positioned ^-1 ^2 ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:4474111,RotY:210}
        execute if score $Random Temporary matches 5 positioned ^-1 ^2 ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:4474111,RotY:210}
        execute if score $Random Temporary matches 6 positioned ^-1 ^2 ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:4474111,RotY:210}

# リセット
    scoreboard players reset $Random Temporary

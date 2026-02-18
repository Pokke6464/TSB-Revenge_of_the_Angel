#> asset:effect/0800.aurora_corrosion_red/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0800.aurora_corrosion_red/_/tick

#> Private
# @private
    #declare score_holder $Interval

# 演出
    execute if predicate lib:random_pass_per/50 run particle dust -0.01 1 -0.5 1 ~ ~1.2 ~ 0.4 0.5 0.4 1 1 normal

# スコアへDurationを代入する
    execute store result score $Interval Temporary run data get storage asset:context Duration

# 40tick間隔で防御貫通ダメージを与える
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 run function asset:effect/0800.aurora_corrosion_red/tick/damage
    scoreboard players reset $Interval Temporary
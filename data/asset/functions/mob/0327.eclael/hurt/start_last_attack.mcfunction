#> asset:mob/0327.eclael/hurt/start_last_attack
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/


# 体力検知
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 体力が1割を切るとダメージモーション後に最後の切り札を発動
    execute if score $HealthPer Temporary matches ..10 run function asset:mob/0327.eclael/tick/app.general/4.start_damage_animation

# 終了
    scoreboard players reset $HealthPer Temporary
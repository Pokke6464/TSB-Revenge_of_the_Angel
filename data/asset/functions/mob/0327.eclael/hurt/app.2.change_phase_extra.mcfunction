#> asset:mob/0327.eclael/hurt/app.2.change_phase_extra
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/


# 体力検知
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 体力30%以下の場合本気を出す
    execute unless data storage rota: {RuthlessMode:1b} if score $HealthPer Temporary matches ..30 run function asset:mob/0327.eclael/tick/app.general/80.start_latter_extra

# 自重消失モードなら35%以下で本気(10%以下で最後の切り札があるため)
    execute if data storage rota: {RuthlessMode:1b} if score $HealthPer Temporary matches ..35 run function asset:mob/0327.eclael/tick/app.general/80.start_latter_extra

# 終了
    scoreboard players reset $HealthPer Temporary

#> asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/main

# 音
    playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
    playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8

# パーティクル
    $particle flash ^$(PosX) ^$(PosY) ^ 0 0 0 0 1 force
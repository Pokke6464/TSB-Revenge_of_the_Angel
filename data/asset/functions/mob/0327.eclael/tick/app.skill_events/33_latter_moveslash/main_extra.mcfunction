#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main_extra
#
# アニメーションのイベントハンドラ 移動斬り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# アニメーション
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/animation_invisible
    execute if score @s 93.AnimationTimer matches 5 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/animation_0.m {to_frame:37}
    execute if score @s 93.AnimationTimer matches 5 run scoreboard players set @s 93.AnimationTimer 37

# 瞬間移動で距離を取る
    execute if score @s 93.AnimationTimer matches 3 facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 3 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 演出
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
    execute if score @s 93.AnimationTimer matches 1 run particle flash ~ ~1 ~ 0 0 0 0 1 force
    execute if score @s 93.AnimationTimer matches 37 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
    execute if score @s 93.AnimationTimer matches 37 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
    execute if score @s 93.AnimationTimer matches 37 run particle flash ~ ~1 ~ 0 0 0 0 1 force
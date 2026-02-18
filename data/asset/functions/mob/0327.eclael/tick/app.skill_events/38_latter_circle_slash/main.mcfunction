#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/main
#
# アニメーションのイベントハンドラ 雷斗星刃・至円
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# アニメーション再生
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/animation_0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 1..12 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 1..12 as @a[tag=!PlayerShouldInvulnerable,distance=..40,sort=furthest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 中心点を挟んで反対側に移動
        execute if score @s 93.AnimationTimer matches 30 facing entity @p[distance=..80] feet run tp @s ~ ~ ~ ~ 0
        execute if score @s 93.AnimationTimer matches 30 at @s as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] positioned as @s run tp @s ~ ~ ~ ~0 0
        execute if score @s 93.AnimationTimer matches 30 at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ^ ^-2.3 ^-3 ~ 0
    # 移動
        execute if score @s 93.AnimationTimer matches 1..13 if entity @s[tag=93.Temp.Repeat] at @s positioned ^ ^-0.2 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 1..13 if entity @s[tag=93.Temp.Repeat] at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 37..40 at @s positioned ^ ^0.3 ^-0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 37 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ^ ^1 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 41..50 at @s positioned ^ ^-0.3 ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    # 攻撃(Blesslessでは1/2で偏差になる)
        execute if score @s 93.AnimationTimer matches 12 if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run tag @s add 93.Temp.Predict
        execute if score @s 93.AnimationTimer matches 12 at @a[tag=!PlayerShouldInvulnerable,distance=..40,sort=furthest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack
        execute if score @s 93.AnimationTimer matches 12 run tag @s remove 93.Temp.Predict
        # 強化後半戦の追撃
            execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 22 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_thunder
    # 演出
        execute if score @s 93.AnimationTimer matches 9 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 27 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 27 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 27 run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 27 at @s positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 27 at @s positioned ^ ^1 ^7 run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 35 at @s positioned ^ ^2 ^7 run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 27 at @s positioned ^ ^3 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/particle_jump

# Blesslessならもう一度繰り返す
    execute if score @s 93.AnimationTimer matches 37 if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set @s[tag=93.Temp.Repeat] 93.AnimationTimer 38
    execute if score @s 93.AnimationTimer matches 37 if predicate api:global_vars/difficulty/min/3_blessless run tag @s add 93.Temp.Repeat
    execute if score @s 93.AnimationTimer matches 37 if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set @s 93.AnimationTimer 0
    execute if score @s 93.AnimationTimer matches 38 if predicate api:global_vars/difficulty/min/3_blessless run tag @s remove 93.Temp.Repeat

# 終了
    execute if score @s 93.AnimationTimer matches 78.. run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/end

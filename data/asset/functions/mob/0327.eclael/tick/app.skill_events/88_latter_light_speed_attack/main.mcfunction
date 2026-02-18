#> asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/main
#
# アニメーションのイベントハンドラ 光速攻撃
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# ターゲット保持
    function asset:mob/0327.eclael/tick/app.general/check_target
    function asset:mob/0327.eclael/tick/app.general/update_target

# 強化後半戦なら攻撃開始までスキップ
    execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 1 run scoreboard players set @s 93.AnimationTimer 64

# 準備運動
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_0
    execute if score @s 93.AnimationTimer matches 11 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_0
    execute if score @s 93.AnimationTimer matches 21 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_0
    execute if score @s 93.AnimationTimer matches 31 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_0
    execute if score @s 93.AnimationTimer matches 41 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_0
    # 移動
        execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] rotated 45 0 positioned ^ ^ ^20 facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~-2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 16 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] rotated 225 0 positioned ^ ^ ^20 facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~-2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 26 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] rotated 315 0 positioned ^ ^ ^20 facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~-2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 36 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] rotated 135 0 positioned ^ ^ ^20 facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~-2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 46 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~-2 ~ ~180 0
    # 演出
        execute if score @s 93.AnimationTimer matches 4 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:3,PosY:0}
        execute if score @s 93.AnimationTimer matches 9 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:-3,PosY:0}
        execute if score @s 93.AnimationTimer matches 14 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:3,PosY:0}
        execute if score @s 93.AnimationTimer matches 19 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:-3,PosY:0}
        execute if score @s 93.AnimationTimer matches 24 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:3,PosY:0}
        execute if score @s 93.AnimationTimer matches 29 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:-3,PosY:0}
        execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:3,PosY:0}
        execute if score @s 93.AnimationTimer matches 39 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:-3,PosY:0}
        execute if score @s 93.AnimationTimer matches 44 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:3,PosY:0}
        execute if score @s 93.AnimationTimer matches 49 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:-3,PosY:0}

# 攻撃開始
    execute if score @s 93.AnimationTimer matches 64 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_1
    # 無敵化
        execute if score @s 93.AnimationTimer matches 64 run function asset:mob/0327.eclael/tick/app.general/invulnerable/start
    # 演出
        execute if score @s 93.AnimationTimer matches 65 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 85 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:0,PosY:1}
        execute if score @s 93.AnimationTimer matches 86 run data modify storage api: Argument set value {ID:2168,FieldOverride:{Color:11206655,Scale:[0.5f,80f,0.5f],AppearInterpolation:1,DisappearTick:2,DisappearInterpolation:1,LifeTime:10}}
        execute if score @s 93.AnimationTimer matches 86 rotated ~ 0 positioned ^ ^1 ^-0.5 run function api:object/summon
        execute if score @s 93.AnimationTimer matches 86 positioned ^ ^1 ^5 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/particle_jump
        execute if score @s 93.AnimationTimer matches 87 positioned ^ ^1 ^15 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/particle_jump
        execute if score @s 93.AnimationTimer matches 88 positioned ^ ^1 ^25 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/particle_jump
    # 移動
        execute if score @s 93.AnimationTimer matches 89 run tp @s ~ ~2 ~ ~180 0

# 攻撃 / 角度をずらしながら往復する
    execute if score @s 93.AnimationTimer matches 90 positioned as @p[tag=93.Temp.Target,distance=..80] positioned ^ ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:11206655,RotY:190}
    execute if score @s 93.AnimationTimer matches 95 positioned as @p[tag=93.Temp.Target,distance=..80] positioned ^1.5 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:11861940,RotY:190}
    execute if score @s 93.AnimationTimer matches 100 positioned as @p[tag=93.Temp.Target,distance=..80] positioned ^1.5 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:10055935,RotY:190}
    execute if score @s 93.AnimationTimer matches 105 positioned as @p[tag=93.Temp.Target,distance=..80] positioned ^0.5 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m {Color:16750335,RotY:190}
    execute if score @s 93.AnimationTimer matches 115..240 if predicate api:global_vars/difficulty/max/2_hard positioned as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m {Interval:4}
    execute if score @s 93.AnimationTimer matches 115..240 if predicate api:global_vars/difficulty/min/3_blessless positioned as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m {Interval:3}
    # 最後に加速する
        execute if score @s 93.AnimationTimer matches 221..260 if predicate api:global_vars/difficulty/max/2_hard positioned as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m {Interval:3}
        execute if score @s 93.AnimationTimer matches 261..280 if predicate api:global_vars/difficulty/max/2_hard positioned as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m {Interval:2}
        execute if score @s 93.AnimationTimer matches 221..260 if predicate api:global_vars/difficulty/min/3_blessless positioned as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m {Interval:2}
        execute if score @s 93.AnimationTimer matches 261..280 if predicate api:global_vars/difficulty/min/3_blessless positioned as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack_check.m {Interval:1}
    
# 攻撃終了
    execute if score @s 93.AnimationTimer matches 330 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/animation_2
    # 移動
        execute if score @s 93.AnimationTimer matches 325 run tp @s ~ ~-2 ~ ~180 0
    # 演出
        execute if score @s 93.AnimationTimer matches 330 run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/move_vfx.m {PosX:0,PosY:3}
    # 無敵解除
        execute if score @s 93.AnimationTimer matches 331 run function asset:mob/0327.eclael/tick/app.general/invulnerable/end

# ターゲット解放
    tag @a remove 93.Temp.Target

# 終了
    execute if score @s 93.AnimationTimer matches 355.. run function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/end

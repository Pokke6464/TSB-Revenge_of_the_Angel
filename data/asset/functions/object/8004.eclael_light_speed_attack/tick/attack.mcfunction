#> asset:object/8004.eclael_light_speed_attack/tick/attack
#
# Objectのtick時の処理
#
# @within function asset:object/8004.eclael_light_speed_attack/tick/

# レーザー(光速で移動しているエクレール)を召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[2f,80f,2f],AppearInterpolation:1,DisappearTick:1,DisappearInterpolation:1,LifeTime:10}
    data modify storage api: Argument.FieldOverride.Color set from storage asset:context this.Color
    execute positioned ~ ~1 ~ run function api:object/summon

# 演出
    execute positioned ^ ^ ^40 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 2
    execute positioned ^ ^ ^40 run playsound entity.breeze.slide hostile @a ~ ~ ~ 2 1
    execute positioned ^ ^ ^40 run playsound entity.breeze.slide hostile @a ~ ~ ~ 2 0.75
    execute positioned ^ ^ ^40 run playsound entity.breeze.land hostile @a ~ ~ ~ 2 1.25
    execute positioned ^ ^1 ^60 run function asset:object/8004.eclael_light_speed_attack/tick/particle
    # 地面に触れている場合は演出追加
        execute unless block ^ ^-0.2 ^40 #lib:no_collision run function asset:object/8004.eclael_light_speed_attack/tick/vfx_ground

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 1
    data modify storage lib: args.dy set value 1.5
    data modify storage lib: args.dz set value 40
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..100]"
    execute positioned ^ ^ ^40 run function lib:rotatable_dxyz/m with storage lib: args
    
# 攻撃
    execute as @a[tag=DXYZ] at @s run function asset:object/8004.eclael_light_speed_attack/tick/slash

# 終了
    tag @a[tag=DXYZ] remove DXYZ
    kill @s

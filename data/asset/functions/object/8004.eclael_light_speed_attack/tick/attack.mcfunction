#> asset:object/8004.eclael_light_speed_attack/tick/attack
#
# Objectのtick時の処理
#
# @within function asset:object/8004.eclael_light_speed_attack/tick/

# レーザー(光速で移動してるエクレール)を召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[2f,80f,2f],AppearInterpolation:1,DisappearTick:1,DisappearInterpolation:1,LifeTime:10}
    data modify storage api: Argument.FieldOverride.Color set from storage asset:context this.Color
    execute positioned ~ ~1 ~ run function api:object/summon

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 1
    data modify storage lib: args.dy set value 1.5
    data modify storage lib: args.dz set value 45
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..80]"
    execute positioned ^ ^ ^45 run function lib:rotatable_dxyz/m with storage lib: args
    
# 攻撃
    execute as @a[tag=DXYZ] run function asset:object/8004.eclael_light_speed_attack/tick/slash

# 終了
    tag @a[tag=DXYZ] remove DXYZ
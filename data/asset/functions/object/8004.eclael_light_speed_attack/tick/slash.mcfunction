#> asset:object/8004.eclael_light_speed_attack/tick/slash
#
# Objectのtick時の処理
#
# @within function asset:object/8004.eclael_light_speed_attack/tick/attack

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset

# MPを減少させる
    function asset:mob/0327.eclael/tick/app.general/mp_reduce.m {Percent:1}

# 演出
    execute at @s run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504],Scale:[3f,1f,3f],Transformation:{left_rotation:{axis:[0,0,1],angle:0f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned as @s positioned ^ ^1 ^-0.5 run function api:object/summon
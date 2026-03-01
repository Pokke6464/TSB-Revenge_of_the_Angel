#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/attack_1
#
# アニメーションのイベントハンドラ 前半・簡易魔法 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/main

# 攻撃の方向を決める
    execute store result entity @s Rotation[0] float 1 run random value 0..359

# 攻撃
    data modify storage api: Argument.ID set value 8005
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride set value {Small:1b,Red:0b,Length:8}
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride set value {Small:0b,Red:0b,Length:6}
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation[0]
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,scores={MobID=327},distance=..80,sort=nearest,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Magic1
    execute rotated as @s positioned ^ ^0.5 ^-15 run function api:object/summon

#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_0
#
# アニメーションのイベントハンドラ 後半・全体落雷 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m

# 攻撃の位置と方向を決める
    execute at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run summon area_effect_cloud ~ ~-2 ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition] at @s facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~ ~ ~ 0

# 攻撃
    data modify storage api: Argument.ID set value 8005
    data modify storage api: Argument.FieldOverride set value {Small:1b,Red:1b,Length:7}
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] Rotation[0]
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.FieldThunder1
    execute positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run function api:object/summon
    
# 念のためkill
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition]
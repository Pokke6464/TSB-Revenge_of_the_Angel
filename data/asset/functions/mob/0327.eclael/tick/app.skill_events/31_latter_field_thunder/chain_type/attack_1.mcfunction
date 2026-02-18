#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_1
#
# アニメーションのイベントハンドラ 後半・全体落雷 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m

#> private
# @private
    #declare score_holder $Random

# 攻撃方向と位置を決める
    execute at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run summon area_effect_cloud ~ ~-2 ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    # 方向を4パターンから抽選
        execute store result score $Random Temporary run random value 0..3
        execute if score $Random Temporary matches 0 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 0 ~
        execute if score $Random Temporary matches 1 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 90 ~
        execute if score $Random Temporary matches 2 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 180 ~
        execute if score $Random Temporary matches 3 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 270 ~
    # 位置を2パターンから抽選
        execute store result score $Random Temporary run random value 0..1
        execute if score $Random Temporary matches 0 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ^7 ^ ^-20
        execute if score $Random Temporary matches 1 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ^-7 ^ ^-20
        scoreboard players reset $Random Temporary

# 既に同じ場所に攻撃予告があるなら攻撃キャンセル(これが無いと無被弾難易度が格段に上がる)
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s if entity @e[type=armor_stand,scores={ObjectID=8005},distance=..1,limit=1] run return run kill @s

# 攻撃
    data modify storage api: Argument.ID set value 8005
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride set value {Small:1b,Red:0b,Length:12}
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride set value {Small:0b,Red:0b,Length:8}
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] Rotation[0]
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.FieldThunder1
    execute at @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run function api:object/summon
    
# 念のためkill
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1]
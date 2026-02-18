#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m
#
# アニメーションのイベントハンドラ 後半・全体落雷 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/main

# 予告表示
    execute at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run summon area_effect_cloud ~ ~-2.49 ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 0 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    $data modify storage api: Argument.FieldOverride.Scale set value [$(Width)f,50f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s positioned ^7 ^ ^-25 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    $data modify storage api: Argument.FieldOverride.Scale set value [$(Width)f,50f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s positioned ^-7 ^ ^-25 run function api:object/summon

    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 90 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    $data modify storage api: Argument.FieldOverride.Scale set value [$(Width)f,50f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s positioned ^7 ^0.01 ^-25 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    $data modify storage api: Argument.FieldOverride.Scale set value [$(Width)f,50f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s positioned ^-7 ^0.01 ^-25 run function api:object/summon

# 念のためkill
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition]
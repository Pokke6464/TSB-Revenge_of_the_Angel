#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/prediction.m
#
#
#
# @within function 
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/windup
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/loop

# 最寄りのプレイヤーを見る
    execute facing entity @p[gamemode=!spectator,distance=..256] feet run tp @s ~ ~ ~ ~ ~

# 落下地点となるマーカーを置く
    execute if entity @s[tag=!C5.JumpFar] rotated as @s rotated ~ 0 positioned ^ ^ ^5 align y run summon marker ~ ~ ~ {Tags:["C5.Marker","C5.Marker.SlamPoint"]}
    execute if entity @s[tag=C5.JumpFar] rotated as @s rotated ~ 0 positioned ^ ^ ^10 align y run summon marker ~ ~ ~ {Tags:["C5.Marker","C5.Marker.SlamPoint"]}

# マーカーの位置を調整する
    execute as @e[type=marker,tag=C5.Marker.SlamPoint,distance=..256,limit=1] at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/slam_point_adjustments

# 攻撃予告
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [10f,10f,0.01f]
    $data modify storage api: Argument.FieldOverride.Tick set value $(Tick)
    execute at @e[type=marker,tag=C5.Marker.SlamPoint,distance=..256,limit=1] positioned ~ ~0.1 ~ run function api:object/summon

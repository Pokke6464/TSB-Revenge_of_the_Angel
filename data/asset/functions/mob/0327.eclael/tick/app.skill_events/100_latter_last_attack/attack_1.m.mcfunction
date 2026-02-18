#> asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/main

# 基準
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackRotation"]}
    $execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation] run tp @s ~ ~ ~ ~$(Rotation) 0

# ライン斬撃Root
    data modify storage api: Argument.ID set value 2209
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.LastAttack1
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    $execute positioned ^$(PosX) ^-0.3 ^$(PosZ) run function api:object/summon
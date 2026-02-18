#> asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/attack.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/main

# 向いている方向に攻撃
    data modify storage api: Argument.ID set value 8004
    $data modify storage api: Argument.FieldOverride.Color set value $(Color)
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.LightSpeedAttack
    execute positioned ^ ^ ^-45 run function api:object/summon

# 方向を変える
    $execute at @s run tp @s ~ ~ ~ ~$(RotY) ~

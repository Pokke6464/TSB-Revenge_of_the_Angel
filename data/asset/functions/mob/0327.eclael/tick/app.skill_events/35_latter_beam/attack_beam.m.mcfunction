#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_beam.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/**

# 斬撃
    $data modify storage api: Argument.ID set value $(ID)
    $data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Beam$(Damage)
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    $data modify storage api: Argument.FieldOverride.Angle set value $(Angle)
    $data modify storage api: Argument.FieldOverride.SlowSpeed set value $(SlowSpeed)
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon
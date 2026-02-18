#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_shock_wave
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 衝撃波を召喚
    data modify storage api: Argument.ID set value 8008
    $data modify storage api: Argument.FieldOverride.Color set value $(Color)
    $data modify storage api: Argument.FieldOverride.Speed set value $(Speed)
    $data modify storage api: Argument.FieldOverride.Tick set value $(Tick)
    $data modify storage api: Argument.FieldOverride.HitboxDelay set value $(HitboxDelay)
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Fall1
    execute positioned ~ ~ ~ run function api:object/summon

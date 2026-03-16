#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/shock_wave.m
#
# 衝撃波
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/attack

# 衝撃波を召喚
    data modify storage api: Argument.ID set value 8050
    $data modify storage api: Argument.FieldOverride.Speed set value $(Speed)
    $data modify storage api: Argument.FieldOverride.Tick set value $(Tick)
    $data modify storage api: Argument.FieldOverride.HitboxDelay set value $(HitboxDelay)
    $data modify storage api: Argument.FieldOverride.SkipTick set value $(SkipTick)
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.SlamShockWave
    execute positioned ~ ~0.1 ~ run function api:object/summon

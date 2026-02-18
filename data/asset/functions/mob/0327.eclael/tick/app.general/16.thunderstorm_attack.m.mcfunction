#> asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m
#
# 汎用処理 落雷による追撃
#
# @within
#   function asset:mob/0327.eclael/tick/**
#   function asset:mob/0327.eclael/debug_damage

# 雷を召喚
    data modify storage api: Argument.ID set value 8006
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,scores={MobID=327},distance=..80,sort=nearest,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder
    $data modify storage api: Argument.FieldOverride.Delay set value $(Delay)
    $data modify storage api: Argument.FieldOverride.Silent set value $(Silent)
    function api:object/summon

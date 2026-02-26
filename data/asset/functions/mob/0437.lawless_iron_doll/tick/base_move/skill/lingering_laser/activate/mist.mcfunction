#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate/mist
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/tick

# オブジェクトをデータ指定した上で召喚する
    data modify storage api: Argument.ID set value 2243
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.LingeringMist
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# サウンド
    playsound tsb_sounds:blaster1 hostile @a ~ ~ ~ 2 0.75

# パーティクル
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:dust 0.5 0 1 2 ~ ~ ~ 0.5 0.5 0.5 0 20 force @a[distance=..32]
    particle minecraft:dust 0.2 0 0.3 1 ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[distance=..32]

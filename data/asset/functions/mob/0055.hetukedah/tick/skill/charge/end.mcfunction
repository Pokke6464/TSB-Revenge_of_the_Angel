#> asset:mob/0055.hetukedah/tick/skill/charge/end
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/tick

# 演出
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 0 force @a[distance=..30]
    particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.2 25 force @a[distance=..30]
    playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1.5 2

# ループカウント加算
    scoreboard players add @s 1J.LoopCount 1

# 自重消失モードではないなら止める
    execute unless data storage rota: {RuthlessMode:1b} run return fail

# 残留する電撃を落とす
    data modify storage api: Argument.ID set value 8041
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 3.0f
    execute positioned ~ ~1.5 ~ run function api:object/summon

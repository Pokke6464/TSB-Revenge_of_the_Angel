#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_3
#
# アニメーションのイベントハンドラ
#
# @within
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main_turn

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2

# 次元斬を召喚
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80] run tp @s ~ ~ ~ ~90 0
    data modify storage api: Argument.ID set value 2207
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.IaiLatter1
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    execute positioned ^ ^ ^7 run function api:object/summon

# 強化後半戦なら通った場所に雷を落とす
    execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_thunder
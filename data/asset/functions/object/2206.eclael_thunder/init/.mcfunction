#> asset:object/2206.eclael_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2206/init

# Smallがtrueの場合はBlesslessでもサイズが大きくならない
    execute if data storage asset:context this{Small:true} run tag @s add 2206.Small

# QuickAttackがtrueの場合は雷が落ちるまでのラグを短縮
    execute if data storage asset:context this{QuickAttack:true} run scoreboard players set @s General.Object.Tick 26

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.Scale set value [7f, 7f, 0.05f]
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @s[tag=2206.Small] run data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=2206.Small] run data modify storage api: Argument.FieldOverride.Scale set value [7f, 7f, 0.05f]
    execute unless data storage asset:context this{QuickAttack:true} run data modify storage api: Argument.FieldOverride.Tick set value 30
    execute if data storage asset:context this{QuickAttack:true} run data modify storage api: Argument.FieldOverride.Tick set value 4
    execute positioned ~ ~-0.5 ~ run function api:object/summon

# 予告が動く雷(ID:8000)が正しい攻撃範囲表示を識別できるようにタグを付ける
    tag @e[type=item_display,tag=!2063.lock,scores={ObjectID=2063},sort=nearest,limit=1] add 2063.lock
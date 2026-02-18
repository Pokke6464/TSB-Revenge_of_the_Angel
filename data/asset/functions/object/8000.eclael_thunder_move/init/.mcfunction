#> asset:object/8000.eclael_thunder_move/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/8000/init

# Smallがtrueの場合はBlesslessでもサイズが大きくならない
    execute if data storage asset:context this{Small:true} run tag @s add 2206.Small

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 6618980
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.Scale set value [7f, 7f, 0.05f]
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @s[tag=2206.Small] run data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=2206.Small] run data modify storage api: Argument.FieldOverride.Scale set value [7f, 7f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 40
    execute positioned ~ ~-0.5 ~ run function api:object/summon
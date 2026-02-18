#> asset:object/8005.eclael_thunder_chain/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/8005.eclael_thunder_chain/tick/attack_check

# 攻撃
    execute unless entity @s[tag=8005.Red] run data modify storage api: Argument.ID set value 2206
    execute if entity @s[tag=8005.Red] run data modify storage api: Argument.ID set value 8001
    execute if entity @s[tag=8005.Small] run data modify storage api: Argument.FieldOverride.Small set value true
    data modify storage api: Argument.FieldOverride.QuickAttack set value true
    data modify storage api: Argument.FieldOverride.ReduceParticle set value true
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute positioned ~ ~ ~ run function api:object/summon

# 長さのスコアを減らし、0なら強制終了
    scoreboard players remove @s 66D.Length 1
    execute if score @s 66D.Length matches ..0 run scoreboard players set @s General.Object.Tick 200
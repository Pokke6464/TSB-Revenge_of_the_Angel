#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/attack_0
#
# アニメーションのイベントハンドラ 前半・簡易魔法 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/main

# 攻撃の方向をターゲットに向ける
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["93.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation] at @s facing entity @p[tag=93.Temp.Target,distance=..80] feet run tp @s ~ ~ ~ ~ 0

# 攻撃
    data modify storage api: Argument.ID set value 8005
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride set value {Small:1b,Red:1b,Length:10}
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride set value {Small:0b,Red:1b,Length:7}
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,sort=nearest,limit=1] Rotation[0]
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Magic1
    execute positioned ~ ~0.5 ~ run function api:object/summon
    
# 念のためkill
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackRotation]

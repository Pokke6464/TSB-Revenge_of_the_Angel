#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack_check

#> private
# @private
    #declare score_holder $Random

# 予告が動く雷とその他の雷を交互に出るようにする
    scoreboard players operation $Temp Temporary = @s 93.AnimationTimer
    scoreboard players operation $Temp Temporary %= $12 Const
    execute if score $Temp Temporary matches 0 run tag @s add 93.Temp.Me
    scoreboard players reset $Temp Temporary

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground

# 攻撃
    execute unless entity @s[tag=93.Temp.Me] store result score $Random Temporary run random value 0..1
    # 雷の種類の分岐
        execute if score $Random Temporary matches 0 run data modify storage api: Argument.ID set value 2206
        execute if score $Random Temporary matches 1 run data modify storage api: Argument.ID set value 8001
        execute if entity @s[tag=93.Temp.Me] run data modify storage api: Argument.ID set value 8000
    # 召喚
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
        data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.FieldThunder0
        execute unless entity @s[tag=93.Temp.Me] at @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] positioned ~ ~1 ~ run function api:object/summon
        execute if entity @s[tag=93.Temp.Me] at @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] positioned ~ ~0.5 ~ run function api:object/summon
    # リセット
        scoreboard players reset $Random Temporary

# 終了
    tag @s remove 93.Temp.Me
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80]
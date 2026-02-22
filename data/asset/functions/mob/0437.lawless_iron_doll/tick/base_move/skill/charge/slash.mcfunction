#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/slash
#
# 追撃
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

# 斬撃の演出を召喚する
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:12899545,Frames:[20335,20335,20336,20337],Scale:[8f,8f,0.1f],Transformation:{left_rotation:[-0.683f,-0.183f,-0.683f,0.183f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes rotated ~ 0 positioned ^ ^ ^3 positioned ~ ~-0.5 ~ rotated ~ 0 run function api:object/summon

# 眼の前の判定
    # 判定
        data modify storage lib: Argument.BoundingFan set value {Angle:45,Radius:6,Height:5,Selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
    # 扇型の判定を出す
        execute positioned ~ ~-2.5 ~ run function lib:bounding_fan/
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash2
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=BoundingFan,distance=..16] run function api:damage/
    # リセット
        function api:damage/reset
        tag @a[tag=BoundingFan,distance=..16] remove BoundingFan

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.5

# 前半戦ならここで止める
    execute if score @s C5.Phase matches 1 run return fail

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2244
    data modify storage api: Argument.FieldOverride.transformation set value {left_rotation:[-0.683f,-0.183f,-0.683f,0.183f]}
    data modify storage api: Argument.FieldOverride.Range set value 70
    data modify storage api: Argument.FieldOverride.Speed set value 3
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.SlashShot2
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function api:object/summon

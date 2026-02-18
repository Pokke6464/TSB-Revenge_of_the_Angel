#> asset:object/8005.eclael_thunder_chain/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/8005/init

# オプション用の情報の取得
    execute if data storage asset:context this{Small:true} run tag @s add 8005.Small
    execute if data storage asset:context this{Red:true} run tag @s add 8005.Red
    execute store result score @s 66D.Length run data get storage asset:context this.Length

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute unless entity @s[tag=8005.Red] run data modify storage api: Argument.FieldOverride.Color set value 54783
    execute if entity @s[tag=8005.Red] run data modify storage api: Argument.FieldOverride.Color set value 16737380
    execute unless entity @s[tag=8005.Small] run data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    execute if entity @s[tag=8005.Small] run data modify storage api: Argument.FieldOverride.Scale set value [7f, 7f, 0.05f]
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ~ ~-0.5 ~ run function api:object/summon

# 予告が動く雷(ID:8000)が正しい攻撃範囲表示を識別できるようにタグを付ける(恐らくこのObjectにはいらないだろうが一応やっておく)
    tag @e[type=item_display,tag=!2063.lock,scores={ObjectID=2063},sort=nearest,limit=1] add 2063.lock

# 音を鳴らす(前半戦の簡易魔法で無音で死角に出現すると理不尽になるため)
    playsound block.amethyst_block.step hostile @a ~ ~ ~ 3 0.5
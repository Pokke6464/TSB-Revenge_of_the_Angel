#> asset:object/8006.eclael_thunder_old/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/8006/init

# Delayが0なら予告を出さない
    execute if data storage asset:context this{Delay:0} run return 0

# Delayの数値分スコアを減らしておく
    execute store result score @s General.Object.Tick run data get storage asset:context this.Delay
    scoreboard players operation @s General.Object.Tick *= $-1 Const

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f, 4f, 0.01f]
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Delay
    execute positioned ~ ~ ~ run function api:object/summon

# 予告が動く雷(ID:8000)が正しい攻撃範囲表示を識別できるようにタグを付ける
    tag @e[type=item_display,tag=!2063.lock,scores={ObjectID=2063},sort=nearest,limit=1] add 2063.lock
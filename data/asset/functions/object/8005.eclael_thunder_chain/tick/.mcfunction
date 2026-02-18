#> asset:object/8005.eclael_thunder_chain/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8005/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告が動く雷(ID:8000)が正しい攻撃範囲表示を識別できるようにタグを付ける(恐らくこのObjectにはいらないだろうけど一応やっておく)
    execute if entity @s[scores={General.Object.Tick=1}] run tag @e[type=item_display,tag=!2063.lock,scores={ObjectID=2063},sort=nearest,limit=1] add 2063.lock

# 攻撃方向の予告
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/8005.eclael_thunder_chain/tick/prediction_vector
    execute if entity @s[scores={General.Object.Tick=3..45}] on passengers run function asset:object/8005.eclael_thunder_chain/tick/effect_vector
    execute if entity @s[scores={General.Object.Tick=45}] on passengers run kill @s

# 攻撃
    execute if entity @s[scores={General.Object.Tick=46..,66D.Length=1..}] run function asset:object/8005.eclael_thunder_chain/tick/attack_check

# 終了
    execute if entity @s[scores={General.Object.Tick=200..}] run kill @s

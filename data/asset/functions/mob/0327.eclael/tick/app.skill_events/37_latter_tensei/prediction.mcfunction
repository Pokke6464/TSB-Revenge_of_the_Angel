#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/prediction
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# 攻撃範囲表示
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 33
    function api:object/summon

# 強化後半戦なら落雷の分の表示を追加
    execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] run return fail
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 6617700
    data modify storage api: Argument.FieldOverride.Scale set value [18f, 18f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 33
    execute positioned ~ ~-0.01 ~ run function api:object/summon

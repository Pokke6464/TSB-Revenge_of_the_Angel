#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/prediction
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 攻撃範囲表示 / 強化後半戦なら拡大
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 54783
    execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] run data modify storage api: Argument.FieldOverride.Scale set value [25f, 25f, 0.05f]
    execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] run data modify storage api: Argument.FieldOverride.Scale set value [30f, 30f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 45
    function api:object/summon

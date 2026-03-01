#> asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/aurora_mist
#
# アニメーションのイベントハンドラ 最後の切り札 極光の霧
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/main

# 既にEffectが付与されているならキャンセル
    data modify storage api: Argument.ID set value 801
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return 0

# Effectを付与
    data modify storage api: Argument set value {ID:801,Duration:2500}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

#> asset:mob/0327.eclael/tick/app.general/12.end_guard_prepare
#
# ガード終了
#
# @within function asset:mob/0327.eclael/tick/**

# 耐性消去
    data modify storage api: Argument.ID set value 150
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# ガード処理用タグ消去
    tag @s remove 93.Temp.PrepareGuard
    tag @s remove 93.Temp.Guard

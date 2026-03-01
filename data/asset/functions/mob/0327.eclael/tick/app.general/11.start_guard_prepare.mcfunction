#> asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare
#
# ガード待機開始
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

# 耐性付与
    data modify storage api: Argument set value {ID:150,Duration:2147483647,Stack:8}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# タグ付与
    tag @s add 93.Temp.PrepareGuard

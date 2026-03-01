#> asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/end
#
# アニメーションのイベントハンドラ 最後の切り札
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.LastAttack

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# 自身に被ダメージ上昇エフェクトを付与
    data modify storage api: Argument set value {ID:107,Duration:2147483647,Stack:30}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 極光の鍵を解除
    data modify storage api: Argument.ID set value 802
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

#> asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/end
#
# アニメーションのイベントハンドラ 最後の切り札
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.LastAttack

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
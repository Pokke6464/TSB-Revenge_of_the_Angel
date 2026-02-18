#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/turn
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.UpperShot
    tag @s add 93.Skill.UpperShot.Turn

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0
#> asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/end
#
# アニメーションのイベントハンドラ 光速攻撃
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/88_latter_light_speed_attack/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.LightSpeedAttack

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# ターゲット解放
    scoreboard players reset @s 93.TargetUserId
    tag @a remove 93.Temp.Target
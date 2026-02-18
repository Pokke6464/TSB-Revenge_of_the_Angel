#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/end
#
# アニメーションのイベントハンドラ 残心
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Beam

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0

# ターゲット解放
    scoreboard players reset @s 93.TargetUserId
    tag @a remove 93.Temp.Target

# 居合に移行
    tag @s add 93.Skill.IaiMove

# Blesslessならタイプを切り替える
    execute if entity @s[tag=93.Skill.Beam.ReflectType] run return run tag @s remove 93.Skill.Beam.ReflectType
    execute if predicate api:global_vars/difficulty/min/3_blessless run tag @s add 93.Skill.Beam.ReflectType
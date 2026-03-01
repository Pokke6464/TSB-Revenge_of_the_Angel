#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/2.end
#
# アニメーションのイベントハンドラ 前半・連続斬り 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.Slash

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# Blesslessならタイプを切り替える
    execute if entity @s[tag=93.Skill.Former.Slash.ReflectType] run return run tag @s remove 93.Skill.Former.Slash.ReflectType
    execute if predicate api:global_vars/difficulty/min/3_blessless run tag @s add 93.Skill.Former.Slash.ReflectType

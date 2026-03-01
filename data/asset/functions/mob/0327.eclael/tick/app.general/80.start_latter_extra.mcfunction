#> asset:mob/0327.eclael/tick/app.general/80.start_latter_extra
#
# 強化後半戦開始
#
# @within function asset:mob/0327.eclael/hurt/app.2.change_phase_extra

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# ガードを終了
    function asset:mob/0327.eclael/tick/app.general/12.end_guard_prepare

# 強化後半戦のタグを付与
    tag @s add 93.Phase.Latter.Extra

# 雷雨発動
    tag @s add 93.Skill.Latter.Thunderstorm
    scoreboard players set @s 93.AnimationTimer 0
    scoreboard players set @s 93.ActionCount 0

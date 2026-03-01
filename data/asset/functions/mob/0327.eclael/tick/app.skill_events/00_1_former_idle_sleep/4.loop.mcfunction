#> asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/4.loop
#
# アニメーションのイベントハンドラ 前半・居眠り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main

# 回復
    data modify storage api: Argument.Heal set value 300f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/
    function api:heal/reset

# ボスバー更新
    function asset:mob/2000.abstract_angel/update_bossbar/

# ループさせる
    scoreboard players set @s 93.AnimationTimer 65

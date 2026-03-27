#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/teleport_backward
#
# アニメーションのイベントハンドラ 移動斬り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main_extra

# 再帰で移動位置を決める
    execute if entity @s[distance=..10] positioned ^ ^ ^-0.5 if block ~ ~ ~ #lib:no_collision run return run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/teleport_backward

# 移動
    function asset:mob/0327.eclael/tick/app.general/2.teleport

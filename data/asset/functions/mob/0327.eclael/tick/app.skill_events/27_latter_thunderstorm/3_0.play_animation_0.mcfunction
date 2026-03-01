#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/3_0.play_animation_0
#
# アニメーションのイベントハンドラ 後半・雷雨 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/35_move/tween {duration:1, to_frame: 1}
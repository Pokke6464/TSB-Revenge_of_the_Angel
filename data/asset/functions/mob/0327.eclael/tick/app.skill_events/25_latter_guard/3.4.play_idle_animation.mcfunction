#> asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/3.4.play_idle_animation
#
# アニメーションのイベントハンドラ 後半・ガード アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.3.main_2

# 自然になるように調整して再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/10_0_latter_idle_normal/tween {duration:10, to_frame: 50}
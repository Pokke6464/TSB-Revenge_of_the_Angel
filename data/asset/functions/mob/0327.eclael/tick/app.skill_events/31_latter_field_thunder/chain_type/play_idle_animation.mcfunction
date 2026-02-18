#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/play_idle_animation
#
# アニメーションのイベントハンドラ 後半・全体落雷 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/10_0_latter_idle_normal/tween {duration:1, to_frame: 1}
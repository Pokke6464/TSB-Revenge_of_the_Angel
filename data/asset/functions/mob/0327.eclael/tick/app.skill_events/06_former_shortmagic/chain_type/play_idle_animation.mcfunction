#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/play_idle_animation
#
# アニメーションのイベントハンドラ 前半・簡易魔法 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/0_0_former_idle_normal/tween {duration:1, to_frame: 1}
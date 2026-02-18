#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/attack_thunder.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/**

# 4方向に雷を召喚
    $execute positioned ^ ^ ^$(Distance) run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    $execute positioned ^ ^ ^-$(Distance) run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    $execute positioned ^$(Distance) ^ ^ run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    $execute positioned ^-$(Distance) ^ ^ run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
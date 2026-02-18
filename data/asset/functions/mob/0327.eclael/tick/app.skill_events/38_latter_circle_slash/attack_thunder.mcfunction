#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_thunder
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack

# ランダムな方向に向ける
    execute store result entity @s Rotation[0] float 1 run random value 0..359

# 円形に雷を降らせる
    execute rotated as @s rotated ~ 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
    execute rotated as @s rotated ~40 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    execute rotated as @s rotated ~80 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
    execute rotated as @s rotated ~120 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    execute rotated as @s rotated ~160 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
    execute rotated as @s rotated ~200 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    execute rotated as @s rotated ~240 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
    execute rotated as @s rotated ~280 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"false"}
    execute rotated as @s rotated ~320 0 positioned ^ ^0.5 ^8.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
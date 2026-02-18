#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_thunder
#
# アニメーションのイベントハンドラ 居合
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_3

# 50%で配置を反転する
    execute if predicate lib:random_pass_per/50 run tag @s add 93.Temp.Me

# ジグザグに召喚
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^2 ^ ^-6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^ ^ ^-3 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:21,Silent:"false"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^-2 ^ ^ run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:22,Silent:"true"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:23,Silent:"false"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^2 ^ ^6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:24,Silent:"true"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^ ^ ^9 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:25,Silent:"false"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^-2 ^ ^12 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:26,Silent:"true"}
    execute if entity @s[tag=!93.Temp.Me] rotated ~ 0 positioned ^ ^ ^15 run return run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:27,Silent:"false"}

# 反転バージョン
    execute rotated ~ 0 positioned ^-2 ^ ^-6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:20,Silent:"true"}
    execute rotated ~ 0 positioned ^ ^ ^-3 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:21,Silent:"false"}
    execute rotated ~ 0 positioned ^2 ^ ^ run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:22,Silent:"true"}
    execute rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:23,Silent:"false"}
    execute rotated ~ 0 positioned ^-2 ^ ^6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:24,Silent:"true"}
    execute rotated ~ 0 positioned ^ ^ ^9 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:25,Silent:"false"}
    execute rotated ~ 0 positioned ^2 ^ ^12 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:26,Silent:"true"}
    execute rotated ~ 0 positioned ^ ^ ^15 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:27,Silent:"false"}

# タグ消去
    tag @s remove 93.Temp.Me

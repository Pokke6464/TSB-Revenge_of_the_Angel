#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/4.effect
#
# アニメーションのイベントハンドラ 後半・雷雨 演出
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main

# 演出
    execute as @e[limit=3] run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 2 0.5
    execute rotated ~ 0 positioned ^ ^10 ^-10 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/5.effect_key

# 攻撃(ほぼ演出)
    execute rotated ~ 0 positioned ^1.4 ^-0.5 ^-2.42487 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^2.8 ^-0.5 ^0 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^1.4 ^-0.5 ^2.42487 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^-1.4 ^-0.5 ^2.42487 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^-2.8 ^-0.5 ^0 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^-1.4 ^-0.5 ^-2.42487 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^0 ^-0.5 ^-5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^4.33013 ^-0.5 ^-2.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^4.33013 ^-0.5 ^2.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^0 ^-0.5 ^5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^-4.33013 ^-0.5 ^2.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute rotated ~ 0 positioned ^-4.33013 ^-0.5 ^-2.5 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}

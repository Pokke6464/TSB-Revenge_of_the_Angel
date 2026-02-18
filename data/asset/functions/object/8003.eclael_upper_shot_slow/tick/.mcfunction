#> asset:object/8003.eclael_upper_shot_slow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8003/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=1..60}] run function asset:object/2212.eclael_upper_shot/tick/prediction_text
    execute if entity @s[scores={General.Object.Tick=60}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,200f,10f]},text:'[{"text":""}]'}

# 攻撃
    execute if entity @s[scores={General.Object.Tick=90}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=130}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=170}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=210}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=250}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=290}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=330}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=370}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=410}] run tp @s ^4 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=450}] run tp @s ^4 ^ ^ ~ ~

    execute if entity @s[scores={General.Object.Tick=90}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=130}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=170}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=210}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=250}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=290}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=330}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=370}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=410}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=450}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction

    execute if entity @s[scores={General.Object.Tick=70}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=110}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=150}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=190}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=230}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=270}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=310}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=350}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=390}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=430}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=470}] run function asset:object/2212.eclael_upper_shot/tick/attack

    execute if entity @s[scores={General.Object.Tick=68}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=108}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=148}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=188}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=228}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=268}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=308}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=348}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=388}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=428}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=468}] run function asset:object/8003.eclael_upper_shot_slow/tick/effect_start

    execute if entity @s[scores={General.Object.Tick=68..85}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=108..125}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=148..165}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=188..205}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=228..245}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=268..285}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=308..325}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=348..365}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=388..405}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=428..445}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=468..485}] as @e[type=area_effect_cloud,tag=8003.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect

    execute if entity @s[scores={General.Object.Tick=70}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=110}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=150}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=190}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=230}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=270}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=310}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=350}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=390}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=430}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=470}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=510}] run scoreboard players set @s 2212.EffectTimer 0
    execute if entity @s[scores={General.Object.Tick=70..}] run function asset:object/2212.eclael_upper_shot/tick/effect_line

# 消滅処理
    kill @s[scores={General.Object.Tick=486..}]
#> asset:object/8000.eclael_thunder_move/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/8000/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 最寄りの攻撃範囲表示を乗せる(これのせいで通常の雷よりも0.5マス下に召喚する必要がある)
    execute if entity @s[scores={General.Object.Tick=1}] on passengers run ride @e[type=item_display,tag=!2063.lock,scores={ObjectID=2063},sort=nearest,limit=1] mount @s
    execute if entity @s[scores={General.Object.Tick=1}] on passengers on passengers run tag @s add 2063.lock

# ランダムな方向を向いてその方向へ動く
    execute if entity @s[scores={General.Object.Tick=1}] store result entity @s Rotation[0] float 1 run random value 0..359
    execute if entity @s[scores={General.Object.Tick=1..40}] run tp @s ^ ^ ^0.2

# 攻撃
    execute if entity @s[scores={General.Object.Tick=41}] positioned ~ ~0.5 ~ run function asset:object/2206.eclael_thunder/tick/damage

# モデル変更
    execute if entity @s[scores={General.Object.Tick=42}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[6f,6f,1f]}
    execute if entity @s[scores={General.Object.Tick=42}] run data modify entity @s text set value '{"text":"1","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=43}] run data modify entity @s text set value '{"text":"2","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=44}] run data modify entity @s text set value '{"text":"3","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=45}] run data modify entity @s text set value '{"text":"4","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=46}] run data modify entity @s text set value '{"text":"5","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=47}] run data modify entity @s text set value '{"text":"4","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=48}] if predicate lib:random_pass_per/50 run function asset:object/2206.eclael_thunder/tick/kill
    execute if entity @s[scores={General.Object.Tick=48}] run data modify entity @s text set value '{"text":"5","font":"object/2206/0"}'

    execute if entity @s[scores={General.Object.Tick=42}] on passengers run data modify entity @s transformation set value [3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,3.0000f,0.3125f,0.0000f,-3.0000f,-0.0000f,5.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[scores={General.Object.Tick=42}] on passengers run data modify entity @s text set value '{"text":"1","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=43}] on passengers run data modify entity @s text set value '{"text":"2","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=44}] on passengers run data modify entity @s text set value '{"text":"3","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=45}] on passengers run data modify entity @s text set value '{"text":"4","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=46}] on passengers run data modify entity @s text set value '{"text":"5","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=47}] on passengers run data modify entity @s text set value '{"text":"4","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=48}] on passengers run data modify entity @s text set value '{"text":"5","font":"object/2206/1"}'

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=49..}] run function asset:object/2206.eclael_thunder/tick/kill
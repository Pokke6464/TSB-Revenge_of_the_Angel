#> asset:object/8004.eclael_light_speed_attack/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8004/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if score @s General.Object.Tick matches 30 run function asset:object/8004.eclael_light_speed_attack/tick/attack

# 演出
    execute if score @s General.Object.Tick matches 30 positioned ^ ^ ^45 run playsound entity.wither.shoot hostile @a[distance=..80] ~ ~ ~ 0.5 1.9 0.5
    execute if score @s General.Object.Tick matches 30 positioned ^ ^ ^45 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
    execute if score @s General.Object.Tick matches 31 positioned ^ ^ ^35 run function asset:object/8004.eclael_light_speed_attack/tick/particle_jump
    execute if score @s General.Object.Tick matches 32 positioned ^ ^ ^45 run function asset:object/8004.eclael_light_speed_attack/tick/particle_jump
    execute if score @s General.Object.Tick matches 33 positioned ^ ^ ^55 run function asset:object/8004.eclael_light_speed_attack/tick/particle_jump

# 消滅
    kill @s[scores={General.Object.Tick=33}]
#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick
#
# 通常叩きつけ攻撃
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/windup

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 5 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 10 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 20 run playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1

# 上昇
    execute if score @s General.Mob.Tick matches 20..23 run tp @s ~ ~0.7 ~
    execute if score @s General.Mob.Tick matches 24..28 run tp @s ~ ~0.2 ~
    execute if score @s General.Mob.Tick matches 28..39 run tp @s ~ ~0.1 ~

# 前進
    execute if score @s General.Mob.Tick matches 20..39 at @s[tag=!C5.JumpFar] rotated ~ 0 run tp @s ^ ^ ^0.25
    execute if score @s General.Mob.Tick matches 20..39 at @s[tag=C5.JumpFar] rotated ~ 0 run tp @s ^ ^ ^0.5

# アニメーションの短縮
    execute if score @s General.Mob.Tick matches 40 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_slam/tween {to_frame: 55, duration: 2}

# マーカーへtp(落下)
    execute if score @s General.Mob.Tick matches 40 positioned as @e[type=marker,tag=C5.Marker.SlamPoint] run tp @s ~ ~ ~

# 攻撃
    execute if score @s General.Mob.Tick matches 42 at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/attack

# 後半戦ではHardなら+1回、Blesslessなら+2回連続攻撃
    execute if score @s General.Mob.Tick matches 50 if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=C5.LoopCount.1,scores={C5.Phase=2..}] unless data storage rota: {RuthlessMode:1b} run scoreboard players set @s General.Mob.Tick 51
    execute if score @s General.Mob.Tick matches 50 if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=C5.LoopCount.2,scores={C5.Phase=2..}] unless data storage rota: {RuthlessMode:1b} run scoreboard players set @s General.Mob.Tick 51
    execute if score @s General.Mob.Tick matches 50 if predicate api:global_vars/difficulty/min/2_hard if entity @s[scores={C5.Phase=2..}] unless data storage rota: {RuthlessMode:1b} run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/loop

# 自重消失モードなら75%を引き続ける限りループする
    execute if score @s General.Mob.Tick matches 50 if data storage rota: {RuthlessMode:1b} if predicate lib:random_pass_per/75 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/loop

# リセット
    execute if score @s General.Mob.Tick matches 75.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

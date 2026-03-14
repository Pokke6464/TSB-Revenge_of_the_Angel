#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick
#
# 突進技
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 付近に誰もいない場合は、突進の開始までスコアを進める
   execute if score @s General.Mob.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..24] run scoreboard players set @s General.Mob.Tick 12

# 突進のスタート動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/start

# ジャンプっぽい感じでTP
    execute if score @s General.Mob.Tick matches 0..2 rotated ~ 0 run tp @s ^ ^0.5 ^-1
    execute if score @s General.Mob.Tick matches 3..4 rotated ~ 0 run tp @s ^ ^0.2 ^-1
    execute if score @s General.Mob.Tick matches 5 rotated ~ 0 run tp @s ^ ^0.1 ^-1
    execute if score @s General.Mob.Tick matches 6..8 rotated ~ 0 run tp @s ^ ^-0.5 ^-1
    execute if score @s General.Mob.Tick matches 9..10 rotated ~ 0 run tp @s ^ ^-0.2 ^-1
    execute if score @s General.Mob.Tick matches 11 rotated ~ 0 run tp @s ^ ^-0.1 ^-1

# 自重消失モードなら確率で横にぶれるようになる
    execute if score @s General.Mob.Tick matches 11 if data storage rota: {RuthlessMode:1b} if predicate lib:random_pass_per/50 run return fail
    execute if score @s General.Mob.Tick matches 11 if data storage rota: {RuthlessMode:1b} at @s run tp @s ~ ~ ~ ~35 ~
    execute if score @s General.Mob.Tick matches 11 if data storage rota: {RuthlessMode:1b} if predicate lib:random_pass_per/50 at @s run tp @s ~ ~ ~ ~-70 ~

# 突進アニメ再生
    execute if score @s General.Mob.Tick matches 12 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/run2/tween {to_frame: 0, duration: 5}

# 突進中のTick処理
    execute if score @s General.Mob.Tick matches 12..30 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/charge_tick

# ブレーキのTick処理
    execute if score @s General.Mob.Tick matches 30..45 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/breaking_tick

# 最寄りのプレイヤーへそこそこの速度で向き直る。横移動でも避けられる
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 35..52 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-2 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    # Blesslessでは素早く向き直る。回避にはジャンプが必須レベル
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 35..40 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 41..49 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-0.5 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 追撃準備アニメ
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_1_windup/tween {to_frame: 4, duration: 4}

# 追撃
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_1_activate/tween {to_frame: 0, duration:1}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 54 at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/position_adjustment
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 54 at @s rotated ~ 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/thrust
    # Blesslessなら追撃速度上昇
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 45 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_1_activate/tween {to_frame: 0, duration:1}
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 49 at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/position_adjustment
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 49 at @s rotated ~ 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/thrust

# リセット
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 80.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 85.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

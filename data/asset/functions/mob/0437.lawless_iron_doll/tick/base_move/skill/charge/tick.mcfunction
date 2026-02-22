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

# 突進アニメ再生
    execute if score @s General.Mob.Tick matches 12 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/run2/tween {to_frame: 0, duration: 5}

# 突進中のTick処理
    execute if score @s General.Mob.Tick matches 12..30 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/charge_tick

# ブレーキのTick処理
    execute if score @s General.Mob.Tick matches 30..45 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/breaking_tick

# 最寄りのプレイヤーへ素早く向き直る
    execute if score @s General.Mob.Tick matches 37..44 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-150 rotated as @s positioned ^ ^ ^-200 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 追撃準備アニメ
    execute if score @s General.Mob.Tick matches 37 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_3_windup/tween {to_frame: 4, duration:4}

# 追撃
    execute if score @s General.Mob.Tick matches 50 if predicate api:global_vars/difficulty/max/2_hard as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_3_activate/tween {to_frame: 0, duration:1}
    execute if score @s General.Mob.Tick matches 54 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/slash
    # Blesslessなら追撃速度上昇
        execute if score @s General.Mob.Tick matches 45 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_3_activate/tween {to_frame: 0, duration:1}
        execute if score @s General.Mob.Tick matches 49 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/slash

# リセット
    execute if score @s General.Mob.Tick matches 80.. if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
    execute if score @s General.Mob.Tick matches 85.. if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

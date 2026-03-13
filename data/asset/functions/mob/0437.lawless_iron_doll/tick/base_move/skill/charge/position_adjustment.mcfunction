#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/position_adjustment
#
# 位置の調整をする
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

# プレイヤーが近くに居ないなら前進
    execute at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1

# Normalの後半戦、またはHard以上で距離が2m伸びる
    execute if predicate api:global_vars/difficulty/1_normal at @s[scores={C5.Phase=2..}] unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/1_normal at @s[scores={C5.Phase=2..}] unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/min/2_hard at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/min/2_hard at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1

# Blesslessの後半戦で更に距離が3m伸びる
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s[scores={C5.Phase=2..}] unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s[scores={C5.Phase=2..}] unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s[scores={C5.Phase=2..}] unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1

# 自重消失モードなら違和感があるレベルで距離が伸びる(+4m)
    execute if data storage rota: {RuthlessMode:1b} at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if data storage rota: {RuthlessMode:1b} at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if data storage rota: {RuthlessMode:1b} at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1
    execute if data storage rota: {RuthlessMode:1b} at @s unless entity @p[gamemode=!spectator,distance=..5] rotated ~ 0 run tp @s ^ ^ ^1

# プレイヤーに剣が突き刺さって見えるように微調整
    execute at @s run tp @s ^-0.5 ^ ^

#> asset:mob/0055.hetukedah/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/55/tick

# 後半戦では距離を取る
    execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=1J.Phase.2,tag=!1J.InAction,tag=!1J.AttackMode] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..7] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s rotated ~ 0 positioned ^ ^ ^-0.15 if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=1J.Phase.2,tag=!1J.InAction,tag=!1J.AttackMode] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..7] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s rotated ~ 0 positioned ^ ^ ^-0.2 if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~
    # 背後に段差があるなら上に移動
        execute if entity @s[tag=1J.Phase.2,tag=!1J.InAction,tag=!1J.AttackMode] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..7] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s rotated ~ 0 unless block ^ ^ ^-0.2 #lib:no_collision if block ^ ^1 ^-0.5 #lib:no_collision run tp @s ~ ~0.15 ~ ~ ~

# 冒頭の動作
    execute if score @s[tag=!1J.InAction] General.Mob.Tick matches -30 run function asset:mob/0055.hetukedah/tick/title

# スコア付与
    scoreboard players add @s General.Mob.Tick 1

# スキル発動
    execute if score @s[tag=!1J.InAction] General.Mob.Tick matches 60 run function asset:mob/0055.hetukedah/tick/skill_select
    # 後半戦の距離を取る状態では発動までの時間を短縮
        execute if score @s[tag=1J.Phase.2,tag=!1J.AttackMode,tag=!1J.InAction] General.Mob.Tick matches 50 run function asset:mob/0055.hetukedah/tick/skill_select

# スキルアクティブ
    execute if entity @s[tag=1J.InAction] run function asset:mob/0055.hetukedah/tick/skill_active

# 演出
    execute positioned ~ ~1 ~ run particle minecraft:dust 1 0 1 0.5 ^ ^ ^ 0.15 0.15 0.15 0 30 force @a[distance=..30]
    execute positioned ~ ~1 ~ run particle minecraft:dust 0.5 0 0.5 0.5 ^ ^ ^ 0.08 0.08 0.08 0 10 force @a[distance=..30]

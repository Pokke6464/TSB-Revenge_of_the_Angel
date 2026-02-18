#> asset:mob/0055.hetukedah/tick/skill/otete_beam/tick_hard
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# ゆっくりと狙う
    execute if score @s General.Mob.Tick matches 0..40 facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/windup

# 後半戦では予備動作短縮
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 0 unless data storage rota: {RuthlessMode:1b} run scoreboard players set @s General.Mob.Tick 5
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 0 if data storage rota: {RuthlessMode:1b} run scoreboard players set @s General.Mob.Tick 8

# 交互に放つ
    execute if score @s General.Mob.Tick matches 30 anchored eyes positioned ^1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s General.Mob.Tick matches 32 anchored eyes positioned ^-1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s General.Mob.Tick matches 34 anchored eyes positioned ^1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s General.Mob.Tick matches 36 anchored eyes positioned ^-1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s General.Mob.Tick matches 38 anchored eyes positioned ^1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot
    execute if score @s General.Mob.Tick matches 40 anchored eyes positioned ^-1 ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/shoot

# より正確に狙う
    execute if score @s General.Mob.Tick matches 41.. facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 前半戦ならチャージまでスキップ
    execute if score @s[tag=!1J.Phase.2] General.Mob.Tick matches 45 run scoreboard players set @s General.Mob.Tick 60

# デカいのを何度か撃つ
    execute if score @s General.Mob.Tick matches 45 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot
    execute if score @s General.Mob.Tick matches 50 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot
    execute if score @s General.Mob.Tick matches 55 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/big_shoot

# チャージ演出
    execute if score @s General.Mob.Tick matches 60..80 run particle crit ~ ~1.5 ~ 0.2 0.2 0.2 1 10 force @a[distance=..30]
    execute if score @s[tag=!1J.Phase.2] General.Mob.Tick matches 60 as @e[limit=2] as @e[limit=2] as @e[limit=2] run playsound minecraft:entity.sniffer.sniffing hostile @a ~ ~ ~ 1.5 1.25
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 60 as @e[limit=2] as @e[limit=2] as @e[limit=2] run playsound minecraft:entity.sniffer.sniffing hostile @a ~ ~ ~ 1.5 1.5

# 後半戦ではチャージ時間短縮
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 75 run scoreboard players set @s General.Mob.Tick 85

# 最後に巨大貫通ビーム
    execute if score @s General.Mob.Tick matches 85 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_shoot

# リセット
    execute if score @s General.Mob.Tick matches 90.. run function asset:mob/0055.hetukedah/tick/reset

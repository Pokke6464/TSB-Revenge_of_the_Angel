#> asset:mob/0055.hetukedah/tick/skill/coldwave/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/coldwave/windup

# 後半戦では予備動作短縮
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 0 run scoreboard players set @s General.Mob.Tick 15

# 最寄りのプレイヤーを見る
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 攻撃
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0055.hetukedah/tick/skill/coldwave/attack

# Hard以上ならループする
    execute if predicate api:global_vars/difficulty/2_hard if score @s[scores={1J.LoopCount=..1}] General.Mob.Tick matches 30 run scoreboard players set @s General.Mob.Tick 15
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=!1J.Phase.2,scores={1J.LoopCount=..2}] General.Mob.Tick matches 30 run scoreboard players set @s General.Mob.Tick 15
    # Blesslessの後半戦なら少しテンポアップ
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=1J.Phase.2,scores={1J.LoopCount=..2}] General.Mob.Tick matches 30 run scoreboard players set @s General.Mob.Tick 20

# リセット
    execute if score @s General.Mob.Tick matches 50.. run function asset:mob/0055.hetukedah/tick/reset

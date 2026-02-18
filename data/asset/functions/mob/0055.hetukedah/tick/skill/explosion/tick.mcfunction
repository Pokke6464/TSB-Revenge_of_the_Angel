#> asset:mob/0055.hetukedah/tick/skill/explosion/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作+タイプ切り替え
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/explosion/windup

# 後半戦では予備動作短縮
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 0 run scoreboard players set @s General.Mob.Tick 10

# スタート
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/start

# 加速
    execute if score @s General.Mob.Tick matches 30..60 run function asset:mob/0055.hetukedah/tick/skill/explosion/dash

# プレイヤーを捉えたら
    execute if score @s General.Mob.Tick matches 30..59 if entity @a[distance=..2] run scoreboard players set @s General.Mob.Tick 59

# プレイヤーの方を向く(薙ぎ払いタイプ用)
    execute if score @s General.Mob.Tick matches 60 facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] eyes run tp @s ~ ~ ~ ~ 0

# 警告
    execute if score @s General.Mob.Tick matches 60 rotated as @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/alert
    execute if score @s General.Mob.Tick matches 65 rotated as @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/alert
    execute if score @s General.Mob.Tick matches 70 rotated as @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/alert

# 爆発
    execute if score @s General.Mob.Tick matches 80 rotated ~ 0 positioned ~ ~0.2 ~ run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion

# 薙ぎ払いタイプ
    execute if entity @s[tag=1J.Skill.Explosion.SweepingType] rotated as @s run function asset:mob/0055.hetukedah/tick/skill/explosion/sweeping

# リセット
    execute if score @s[tag=!1J.Skill.Explosion.SweepingType] General.Mob.Tick matches 100.. run function asset:mob/0055.hetukedah/tick/reset
    execute if score @s[tag=1J.Skill.Explosion.SweepingType] General.Mob.Tick matches 110.. run function asset:mob/0055.hetukedah/tick/reset

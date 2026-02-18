#> asset:mob/0055.hetukedah/tick/skill/explosion/sweeping
#
# 
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 難易度Blesslessで正面に爆発が2つ追加、自重消失で初撃に爆発が1つ追加
# 警告
    execute if score @s[tag=!1J.ToTheLeft] General.Mob.Tick matches 60 rotated ~-25 0 positioned ^ ^0.1 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if score @s[tag=1J.ToTheLeft] General.Mob.Tick matches 60 rotated ~25 0 positioned ^ ^0.1 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if data storage rota: {RuthlessMode:1b} if score @s[tag=!1J.ToTheLeft] General.Mob.Tick matches 60 rotated ~-60 0 positioned ^ ^0.1 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if data storage rota: {RuthlessMode:1b} if score @s[tag=1J.ToTheLeft] General.Mob.Tick matches 60 rotated ~60 0 positioned ^ ^0.1 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini

    execute if score @s General.Mob.Tick matches 65 rotated ~0 0 positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 65 rotated ~15 0 positioned ^ ^ ^12 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 65 rotated ~-15 0 positioned ^ ^ ^12 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini

    execute if score @s[tag=!1J.ToTheLeft] General.Mob.Tick matches 70 rotated ~25 0 positioned ^ ^0.1 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if score @s[tag=1J.ToTheLeft] General.Mob.Tick matches 70 rotated ~-25 0 positioned ^ ^0.1 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini

# 爆発
    execute if score @s[tag=!1J.ToTheLeft] General.Mob.Tick matches 80 rotated ~-25 0 positioned ^ ^0.2 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if score @s[tag=1J.ToTheLeft] General.Mob.Tick matches 80 rotated ~25 0 positioned ^ ^0.2 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if data storage rota: {RuthlessMode:1b} if score @s[tag=!1J.ToTheLeft] General.Mob.Tick matches 80 rotated ~-60 0 positioned ^ ^0.2 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if data storage rota: {RuthlessMode:1b} if score @s[tag=1J.ToTheLeft] General.Mob.Tick matches 80 rotated ~60 0 positioned ^ ^0.2 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini

    execute if score @s General.Mob.Tick matches 88 rotated ~0 0 positioned ^ ^ ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 88 rotated ~15 0 positioned ^ ^ ^12 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 88 rotated ~-15 0 positioned ^ ^ ^12 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini

    execute if score @s[tag=!1J.ToTheLeft] General.Mob.Tick matches 96 rotated ~25 0 positioned ^ ^0.2 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
    execute if score @s[tag=1J.ToTheLeft] General.Mob.Tick matches 96 rotated ~-25 0 positioned ^ ^0.2 ^7 run function asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini

# 音
    execute if score @s General.Mob.Tick matches 88 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 2
    execute if score @s General.Mob.Tick matches 96 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 2

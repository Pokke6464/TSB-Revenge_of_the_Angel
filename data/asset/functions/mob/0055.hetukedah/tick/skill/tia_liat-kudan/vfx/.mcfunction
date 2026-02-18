#> asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/tick

# チャージ音
    execute if score @s General.Mob.Tick matches 10..170 run playsound block.bell.resonate hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 190..380 run playsound block.bell.resonate hostile @a ~ ~ ~ 2 0.65
    execute if score @s General.Mob.Tick matches 30 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 0.75
    execute if score @s General.Mob.Tick matches 130 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 230 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 330 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 430 run playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 2 0.75
    execute if score @s General.Mob.Tick matches 465 run playsound block.glass.break hostile @a ~ ~ ~ 2 0.65

# オーラ
    execute if score @s General.Mob.Tick matches 30..129 run particle trial_spawner_detection ~ ~1 ~ 1 1 1 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 130..229 run particle trial_spawner_detection ~ ~1 ~ 1 1 1 0 3 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 230..329 run particle trial_spawner_detection ~ ~1 ~ 1 1 1 0.075 5 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 330..429 run particle trial_spawner_detection ~ ~1 ~ 1 1 1 0.15 10 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 330..429 if predicate lib:random_pass_per/50 run particle flash ~ ~1.5 ~ 0.5 0.5 0.5 0.1 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 430..464 run particle flash ~ ~1.5 ~ 0 0 0 0.1 1 force @a[distance=..30]

# 足元のオーラ
    execute if score @s General.Mob.Tick matches 30..129 run particle dust 0.8 0.4 0 1 ~ ~0.1 ~ 1.5 0 1.5 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 30..129 run particle dust 0 0.75 0.75 1 ~ ~0.1 ~ 1.5 0 1.5 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 30..129 run particle dust 0.75 0.75 0 1 ~ ~0.1 ~ 1.5 0 1.5 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 130..229 if predicate lib:random_pass_per/80 run particle dust 0.8 0.4 0 1.25 ~ ~0.1 ~ 1.5 0 1.5 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 130..229 if predicate lib:random_pass_per/80 run particle dust 0 0.75 0.75 1.25 ~ ~0.1 ~ 1.5 0 1.5 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 130..229 if predicate lib:random_pass_per/80 run particle dust 0.75 0.75 0 1.25 ~ ~0.1 ~ 1.5 0 1.5 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 230..329 run particle dust 0.8 0.4 0 1.5 ~ ~0.1 ~ 1.5 0 1.5 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 230..329 run particle dust 0 0.75 0.75 1.5 ~ ~0.1 ~ 1.5 0 1.5 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 230..329 run particle dust 0.75 0.75 0 1.5 ~ ~0.1 ~ 1.5 0 1.5 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 330..429 run particle dust 0.8 0.4 0 2 ~ ~0.1 ~ 2 0 2 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 330..429 run particle dust 0 0.75 0.75 2 ~ ~0.1 ~ 2 0 2 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 330..429 run particle dust 0.75 0.75 0 2 ~ ~0.1 ~ 2 0 2 0 2 force @a[distance=..30]

# 攻撃範囲表示
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 30..229 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:20,Distance:10}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 230..329 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:40,Distance:10}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 330..429 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:40,Distance:10}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 330..429 rotated ~6 ~ run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:40,Distance:10}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 30..229 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:20,Distance:12}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 230..329 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:40,Distance:12}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 330..429 run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:40,Distance:12}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 330..429 rotated ~6 ~ run function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/vfx/enchant.m {Percent:40,Distance:12}

# 攻撃音
    execute if score @s General.Mob.Tick matches 476 run playsound tsb_sounds:censored hostile @a ~ ~ ~ 3.5 0.5
    execute if score @s General.Mob.Tick matches 475 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 480 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 485 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 490 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 495 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 500 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75

# 爆発
    execute if score @s General.Mob.Tick matches 475..500 run particle dust 0.5 0 0.5 4 ~ ~ ~ 6 6 6 0 15 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 475 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score @s General.Mob.Tick matches 480 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score @s General.Mob.Tick matches 485 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score @s General.Mob.Tick matches 490 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score @s General.Mob.Tick matches 495 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score @s General.Mob.Tick matches 500 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force

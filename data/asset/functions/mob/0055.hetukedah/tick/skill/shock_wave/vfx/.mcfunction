#> asset:mob/0055.hetukedah/tick/skill/shock_wave/vfx/
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/shock_wave/tick

# チャージ音
    execute if score @s General.Mob.Tick matches 30..150 if predicate lib:random_pass_per/50 run playsound block.beacon.ambient hostile @a ~ ~ ~ 4 2
    execute if score @s General.Mob.Tick matches 30 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 0.75
    execute if score @s General.Mob.Tick matches 110 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 0.75
    execute if score @s General.Mob.Tick matches 190 run playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 2 1.2

# オーラ
    execute if score @s General.Mob.Tick matches 30..109 run particle dust 0.8 0.4 0 1.25 ~ ~1.5 ~ 0.75 0.75 0.75 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 30..109 run particle dust 0 0.75 0.75 1.25 ~ ~1.5 ~ 0.75 0.75 0.75 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 30..109 run particle dust 0.75 0.75 0 1.25 ~ ~1.5 ~ 0.75 0.75 0.75 0 1 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 110..189 run particle trial_spawner_detection ~ ~1 ~ 1 1 1 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 110..189 if predicate lib:random_pass_per/70 run particle dust 0.8 0.4 0 1.75 ~ ~1.5 ~ 0.75 0.75 0.75 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 110..189 if predicate lib:random_pass_per/70 run particle dust 0 0.75 0.75 1.75 ~ ~1.5 ~ 0.75 0.75 0.75 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 110..189 if predicate lib:random_pass_per/70 run particle dust 0.75 0.75 0 1.75 ~ ~1.5 ~ 0.75 0.75 0.75 0 2 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 190..229 run particle end_rod ~ ~1.5 ~ 0.1 0.1 0.1 0.3 3 force @a[distance=..30]

# 攻撃範囲表示
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 30..189 run function asset:mob/0055.hetukedah/tick/skill/shock_wave/vfx/enchant.m {Percent:30,Distance:8}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 30..189 rotated ~ ~ run function asset:mob/0055.hetukedah/tick/skill/shock_wave/vfx/enchant.m {Percent:40,Distance:10}

# 攻撃音
    execute if score @s General.Mob.Tick matches 230 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 235 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75
    execute if score @s General.Mob.Tick matches 240 run playsound entity.generic.explode hostile @a ~ ~ ~ 3.5 0.75

# 爆発
    execute if score @s General.Mob.Tick matches 230..240 run particle dust 0.5 0 0.5 4 ~ ~ ~ 5 5 5 0 15 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 230 run particle explosion_emitter ~ ~ ~ 4 4 4 0 20 force
    execute if score @s General.Mob.Tick matches 235 run particle explosion_emitter ~ ~ ~ 4 4 4 0 20 force
    execute if score @s General.Mob.Tick matches 240 run particle explosion_emitter ~ ~ ~ 4 4 4 0 20 force

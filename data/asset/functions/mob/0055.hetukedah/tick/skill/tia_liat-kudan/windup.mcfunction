#> asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/windup
#
# 予備動作
#
# @within function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/tick

# こっち見る
    execute facing entity @p[tag=!PLayerShouldInvulnerable,distance=..64] feet run tp @s ~ ~ ~ ~ 0

# 演出
    particle trial_spawner_detection ~ ~1 ~ 1 1 1 0 30 force @a[distance=..30]
    playsound entity.ravager.death hostile @a ~ ~ ~ 2 1.2
    execute as @e[limit=2] as @e[limit=2] as @e[limit=2] run playsound block.bell.resonate hostile @a ~ ~ ~ 2 0.8

# 動きを遅くする
    effect give @s slowness 17 1 true

# ダメージ50%カット
    effect give @s resistance 24 4 true

#scoreboard players set @s General.Mob.Tick 229
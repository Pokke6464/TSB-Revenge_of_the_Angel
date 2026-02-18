#> asset:mob/0055.hetukedah/tick/skill/shock_wave/windup
#
# 予備動作
#
# @within function asset:mob/0055.hetukedah/tick/skill/shock_wave/tick

# こっち見る
    execute facing entity @p[tag=!PLayerShouldInvulnerable,distance=..64] feet run tp @s ~ ~ ~ ~ 0

# 演出
    particle trial_spawner_detection ~ ~1 ~ 1 1 1 0 30 force @a[distance=..30]
    playsound entity.ravager.celebrate hostile @a ~ ~ ~ 2 1.8

# 動きを遅くする
    effect give @s slowness 8 0 true

# ダメージ30%カット
    effect give @s resistance 8 2 true

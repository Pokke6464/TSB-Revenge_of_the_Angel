#> asset:object/8051.lawless_shockwave_big/tick/explosion
#
#
#
# @within function asset:object/8051.lawless_shockwave_big/tick/

# パーティクル
    particle large_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.3 10 force @a[distance=..32]
    particle dust 0.5 0.5 0.5 3 ~ ~0.5 ~ 1 1 1 0 5 force @a[distance=..32]
    particle explosion ~ ~0.5 ~ 0 0 0 2 10 force @a[distance=..32]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 0.75

# ダメージ
    function asset:object/8051.lawless_shockwave_big/tick/attack

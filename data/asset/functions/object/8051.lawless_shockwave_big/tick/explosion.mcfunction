#> asset:object/8051.lawless_shockwave_big/tick/explosion
#
#
#
# @within function asset:object/8051.lawless_shockwave_big/tick/

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ補正
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
    # ダメージを与える
        execute positioned ~-1.5 ~ ~-1.5 as @a[dx=2,dy=5,dz=2] run function api:damage/
    # リセット
        function api:damage/reset

# パーティクル
    particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.3 10 force @a[distance=..64]
    particle dust 0.5 0.5 0.5 3 ~ ~1 ~ 1 1 1 0 5 force @a[distance=..64]
    particle explosion ~ ~1 ~ 0 0 0 1.8 10 force @a[distance=..64]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.75

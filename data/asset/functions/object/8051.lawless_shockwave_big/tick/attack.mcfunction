#> asset:object/8051.lawless_shockwave_big/tick/attack
#
#
#
# @within function asset:object/8051.lawless_shockwave_big/tick/explosion

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
    # 当たり判定
        data modify storage lib: args set value {dx:2.5,dy:5,dz:2.5,selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
        function lib:rotatable_dxyz/m with storage lib: args
    # ダメージを与える
        execute as @a[tag=DXYZ,distance=..16] run function api:damage/
    # リセット
        function api:damage/reset
        tag @a[tag=DXYZ,distance=..16] remove DXYZ

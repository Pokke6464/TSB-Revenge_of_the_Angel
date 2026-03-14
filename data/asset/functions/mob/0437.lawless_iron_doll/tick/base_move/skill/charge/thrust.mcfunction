#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/thrust
#
# 追撃
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

# 演出
    playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 0.75
    playsound entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.75
    execute positioned ^0.5 ^1 ^ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/particle

# 当たり判定
    # 判定
        tag @a[tag=DXYZ] remove DXYZ
        data modify storage lib: args.dx set value 1
        data modify storage lib: args.dy set value 1.5
        data modify storage lib: args.dz set value 3.25
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..16]"
    # 直方体の判定を出す(Xを0.5ずらしているのは剣の位置に合わせるため)
        execute positioned ^0.5 ^-0.5 ^3.25 run function lib:rotatable_dxyz/m with storage lib: args
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Charge
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=DXYZ,distance=..16] run function api:damage/
    # リセット
        function api:damage/reset
        tag @a[tag=DXYZ,distance=..16] remove DXYZ

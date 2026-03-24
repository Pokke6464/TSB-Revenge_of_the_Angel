#> asset:object/8004.eclael_light_speed_attack/tick/slash
#
# Objectのtick時の処理
#
# @within function asset:object/8004.eclael_light_speed_attack/tick/attack

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって光速で切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset

# MPを減少させる
    function asset:mob/0327.eclael/tick/app.general/mp_reduce.m {Percent:1}

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.25
    particle flash ~ ~1 ~ 0 0 0 0 1 force @a[distance=..32]
    data modify storage api: Argument.ID set value 2208
    execute positioned ~ ~1 ~ run function api:object/summon

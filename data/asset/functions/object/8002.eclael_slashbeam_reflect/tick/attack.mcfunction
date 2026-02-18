#> asset:object/8002.eclael_slashbeam_reflect/tick/attack
#
# 攻撃判定
#
# @within function asset:object/8002.eclael_slashbeam_reflect/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset

# 終了
    tag @a remove 8002.Hit

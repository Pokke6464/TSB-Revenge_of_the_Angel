#> asset:object/8040.hetukedah_coldwave/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/8040.hetukedah_coldwave/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual

# HurtTimeが0ならダメージ
    function api:data_get/hurt_time
    execute if data storage api: {HurtTime:0s} run function api:damage/
    execute if data storage api: {HurtTime:0s} run playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 1

# 終了
    function api:damage/reset

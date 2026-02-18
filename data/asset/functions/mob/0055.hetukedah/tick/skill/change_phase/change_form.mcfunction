#> asset:mob/0055.hetukedah/tick/skill/change_phase/change_form
#
# フェーズ2へ移行
#
# @within function asset:mob/0055.hetukedah/tick/skill/change_phase/tick

# 演出
    execute as @e[limit=2] as @e[limit=2] run playsound item.trident.return hostile @a ~ ~ ~ 2 0.75
    particle flash ~ ~1.5 ~ 1 1 1 0 20 force @a[distance=..30]

# 装備アイテムの変更
    item replace entity @s weapon.mainhand with stick{Count:1b,Enchantments:[{}],CustomModelData:20013}
    item replace entity @s weapon.offhand with stick{Count:1b,Enchantments:[{}],CustomModelData:20014}
    item replace entity @s armor.head with stick{Count:1b,Enchantments:[{}],CustomModelData:20015}

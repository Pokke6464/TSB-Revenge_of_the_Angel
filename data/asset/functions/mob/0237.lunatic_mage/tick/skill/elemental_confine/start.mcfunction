#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/start
#
# 大技開始のながれ
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/

# 頭装備解除
    item replace entity @s armor.head with minecraft:air

# 演出
    function asset:mob/0237.lunatic_mage/tick/skill/teleport/vfx

# スポーン地点にワープ
    execute at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run tp @s ~ ~2 ~

# 演出
    execute at @s run function asset:mob/0237.lunatic_mage/tick/skill/teleport/vfx

# NoAIになる
    data modify entity @s NoAI set value 1b

# 大技中は耐性付与
    data modify storage api: Argument set value {ID:150,Duration:550,Stack:5}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

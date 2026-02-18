#> asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/effect_jumpboost
#
# 
#
# @within function asset:mob/0055.hetukedah/tick/skill/tia_liat-kudan/tick

# 跳躍力上昇
    data modify storage api: Argument set value {ID:192,Duration:320,Stack:3}
    execute as @a[distance=..64] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

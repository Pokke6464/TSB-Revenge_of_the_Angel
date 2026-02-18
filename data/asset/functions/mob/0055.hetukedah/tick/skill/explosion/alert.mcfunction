#> asset:mob/0055.hetukedah/tick/skill/explosion/alert
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# パーティクル
    function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape

# サウンド
    playsound minecraft:block.note_block.harp hostile @a ~ ~ ~ 2 1.5

# NoAIにする
    data merge entity @s {NoAI:1b}

# 薙ぎ払いタイプならここで止める
    execute if entity @s[tag=1J.Skill.Explosion.SweepingType] run return fail

# 追加警告、難易度Hard以上なら更に増える
    execute rotated ~0 ~ positioned ^ ^ ^8 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~45 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~-45 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute rotated ~90 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute rotated ~-90 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~135 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~-135 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini
    execute rotated ~180 ~ positioned ^ ^ ^9 run function asset:mob/0055.hetukedah/tick/skill/explosion/vfx/alert_shape_mini

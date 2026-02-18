#> asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_beam/
#
#
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_shoot
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_beam/

# パーティクル
    particle dust 1 1 0.5 2 ^ ^ ^ 1 1 1 0 3
    particle dust 1 1 0 2 ^ ^ ^ 1 1 1 0 3
    particle dust 0.7 0.7 0 2 ^ ^ ^ 1 1 1 0 3

# ダメージ判定
    execute positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1] add 1J.HyperBeam.Hit

# returnで止めつつ再帰
    execute if entity @s[distance=..40] positioned ^ ^ ^1 run return run function asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_beam/

# 再帰処理終了時にタグ付きプレイヤーにダメージ
    execute if entity @s[tag=!1J.Phase.2] run data modify storage api: Argument.Damage set value 8.5f
    execute if entity @s[tag=1J.Phase.2] run data modify storage api: Argument.Damage set value 9.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=1J.HyperBeam.Hit] run function api:damage/
    function api:damage/reset
    tag @a remove 1J.HyperBeam.Hit

#> asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/reverse
#
#
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/flamethrower/shoot
#   asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/reverse

# パーティクル
    particle dust -0.01 -1 0 0.5 ^ ^ ^0.5 0.1 0.1 0.1 0 2
    particle dust -0.01 -1 0 0.5 ^ ^ ^ 0.1 0.1 0.1 0 2
    particle dust -0.01 -1 0 0.5 ^ ^ ^-0.5 0.1 0.1 0.1 0 2
    particle flame ^ ^ ^ 0.1 0.1 0.1 0 1

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/hit

# 再帰
    execute if entity @s[distance=..10] positioned ^ ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/reverse

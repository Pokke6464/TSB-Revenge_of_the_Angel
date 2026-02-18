#> asset:object/8030.shock_wave/tick/hit.m
#
# Objectのtick時の処理
#
# @within asset:object/8030.shock_wave/tick/m

# 当たり判定
    $execute facing entity @a[tag=!PlayerShouldInvulnerable] feet rotated ~ 0 positioned ^ ^ ^$(Distance) positioned ~-0.5 ~-0.05 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~ ~-0.85 ~ run tag @s[dx=0] add 8030.Hit

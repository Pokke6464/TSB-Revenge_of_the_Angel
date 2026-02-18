#> asset:object/8002.eclael_slashbeam_reflect/tick/hit
#
# Mobのtick時の処理
#
# @within function asset:object/8002.eclael_slashbeam_reflect/tick/

# ヒット判定
    execute positioned ^-1 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^1 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^-1 ^-1 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^ ^-1 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^1 ^-1 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^-1 ^-2 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^ ^-2 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
    execute positioned ^1 ^-2 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 8002.Hit
#> asset:object/8040.hetukedah_coldwave/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8040/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 曲げながら前進させる
    tp @s[scores={General.Object.Tick=..30}] ^ ^ ^0.2 ~5 ~
    tp @s[scores={General.Object.Tick=31..}] ^ ^ ^0.2 ~1 ~

# 見た目
    execute if predicate lib:random_pass_per/80 run particle dust -0.5 1 -0.01 2 ~ ~0.1 ~ 0.5 0 0.5 0 1 force @a[distance=..30]
    particle snowflake ~ ~0.1 ~ 0.5 0 0.5 0.1 1 force @a[distance=..30]

# ダメージ
    execute positioned ~-0.75 ~ ~-0.75 as @a[tag=!PlayerShouldInvulnerable,dx=0.5,dz=0.5] positioned ~ ~-0.8 ~ if entity @s[dx=0.5,dz=0.5] run function asset:object/8040.hetukedah_coldwave/tick/damage

# 1ブロックの段差なら登り、それ以上の高さなら消える
    execute unless block ~ ~ ~ #lib:no_collision unless block ~ ~1 ~ #lib:no_collision run kill @s
    execute unless block ~ ~ ~ #lib:no_collision run tp @s ^ ^0.2 ^0.2

# 下に地面が無いならゆっくり落下する
    execute if block ~ ~ ~ #lib:no_collision if block ~ ~-0.1 ~ #lib:no_collision run tp @s ^ ^-0.1 ^0.2

# 時間経過で消滅
    execute if predicate api:global_vars/difficulty/max/2_hard run kill @s[scores={General.Object.Tick=100..}]
    execute if predicate api:global_vars/difficulty/min/3_blessless run kill @s[scores={General.Object.Tick=140..}]

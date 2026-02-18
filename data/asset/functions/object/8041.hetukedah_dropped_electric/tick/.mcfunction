#> asset:object/8041.hetukedah_dropped_electric/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8041/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 見た目
    particle crit ~ ~0.2 ~ 0.5 0 0.5 0.2 3 force @a[distance=..30]
    particle dust 1 1 0 1 ~ ~0.2 ~ 0.5 0 0.5 0 1 force @a[distance=..30]

# ダメージ
    execute positioned ~-0.75 ~ ~-0.75 as @a[tag=!PlayerShouldInvulnerable,dx=0.5,dz=0.5] positioned ~ ~-0.8 ~ if entity @s[dx=0.5,dz=0.5] run function asset:object/8041.hetukedah_dropped_electric/tick/damage

# 下に地面が無いならゆっくり落下する
    execute if block ~ ~-0.2 ~ #lib:no_collision run tp @s ~ ~-0.2 ~

# 時間経過で消滅
    kill @s[scores={General.Object.Tick=400..}]

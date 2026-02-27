#> asset:object/8051.lawless_shockwave_big/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8051/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# プレイヤーをかなり追尾
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Object.Tick matches 0.. facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Object.Tick matches 0.. facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-7.5 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# 移動
    tp @s ^ ^ ^0.5

# 一定間隔で爆発
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 数tickごとに攻撃判定が発生
        scoreboard players operation $Interval Temporary %= $5 Const
        execute if score $Interval Temporary matches 0 run function asset:object/8051.lawless_shockwave_big/tick/explosion
    # リセット
        scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=75..}]

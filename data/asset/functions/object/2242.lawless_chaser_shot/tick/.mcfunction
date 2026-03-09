#> asset:object/2242.lawless_chaser_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2242/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    execute if predicate lib:random_pass_per/50 run particle minecraft:enchant ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3
    particle minecraft:smoke ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3
    particle minecraft:dust 0.5 0 1 1.5 ^ ^ ^-0.5 0.25 0.25 0.25 0 2

# 一番近くのプレイヤーのほうをゆっくりと向く。
    execute if score @s General.Object.Tick matches ..499 facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-30 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Object.Tick matches 500.. facing entity @p[gamemode=!spectator,distance=..64] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-15 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 移動。
    tp @s[scores={General.Object.Tick=..499}] ^ ^ ^0.1
    tp @s[scores={General.Object.Tick=500..}] ^ ^ ^0.2

# ヒット判定
    execute positioned ~-1 ~-1 ~-1 if entity @a[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] run function asset:object/2242.lawless_chaser_shot/tick/explode

# 地面と重なっても爆発する
    execute unless block ~ ~ ~ #lib:no_collision run function asset:object/2242.lawless_chaser_shot/tick/explode

# Tickが300を超えていれば確率で起爆準備に入る
    execute if score @s General.Object.Tick matches 300..499 if predicate lib:random_pass_per/3 run scoreboard players set @s General.Object.Tick 500

# 爆発の予告
    # 点滅
        data modify entity @s[scores={General.Object.Tick=500}] item.tag.display.color set value 11163135
        data modify entity @s[scores={General.Object.Tick=505}] item.tag.display.color set value 7536895
        data modify entity @s[scores={General.Object.Tick=510}] item.tag.display.color set value 11163135
        data modify entity @s[scores={General.Object.Tick=515}] item.tag.display.color set value 7536895
        data modify entity @s[scores={General.Object.Tick=520}] item.tag.display.color set value 11163135
        data modify entity @s[scores={General.Object.Tick=525}] item.tag.display.color set value 7536895
        data modify entity @s[scores={General.Object.Tick=530}] item.tag.display.color set value 11163135
        data modify entity @s[scores={General.Object.Tick=535}] item.tag.display.color set value 7536895
    # 音
        execute if score @s General.Object.Tick matches 500 run playsound block.note_block.bit neutral @a ~ ~ ~ 1.5 0.75
        execute if score @s General.Object.Tick matches 510 run playsound block.note_block.bit neutral @a ~ ~ ~ 1.5 0.75
        execute if score @s General.Object.Tick matches 520 run playsound block.note_block.bit neutral @a ~ ~ ~ 1.5 0.75
        execute if score @s General.Object.Tick matches 530 run playsound block.note_block.bit neutral @a ~ ~ ~ 1.5 0.75

# 爆発
    execute if score @s General.Object.Tick matches 540 run function asset:object/2242.lawless_chaser_shot/tick/explode

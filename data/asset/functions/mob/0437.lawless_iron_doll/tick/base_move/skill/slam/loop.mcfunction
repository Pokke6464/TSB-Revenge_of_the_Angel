#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/loop
#
# ループさせる
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick

# ループ回数を記録
    execute unless data storage rota: {RuthlessMode:1b} if predicate api:global_vars/difficulty/min/3_blessless run tag @s[tag=C5.LoopCount.1] add C5.LoopCount.2
    execute unless data storage rota: {RuthlessMode:1b} run tag @s add C5.LoopCount.1

# スコアをジャンプ直前にする
    scoreboard players set @s General.Mob.Tick 19

# Blesslessで近くにプレイヤーが居なければジャンプ距離を伸ばす
    tag @s remove C5.JumpFar
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add C5.JumpFar

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_slam/tween {to_frame: 28, duration: 4}

# 最寄りのプレイヤーを見る
    execute facing entity @p[gamemode=!spectator,distance=..256] feet run tp @s ~ ~ ~ ~ ~

# 落下地点となるマーカーを置く
    execute rotated as @s[tag=!C5.JumpFar] rotated ~ 0 run summon marker ^ ^ ^5 {Tags:["C5.Marker","C5.Marker.SlamPoint"]}
    execute rotated as @s[tag=C5.JumpFar] rotated ~ 0 run summon marker ^ ^ ^10 {Tags:["C5.Marker","C5.Marker.SlamPoint"]}

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [10f,10f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 20
    data modify storage api: Argument.ID set value 2063
    execute rotated as @s[tag=!C5.JumpFar] rotated ~ 0 positioned ^ ^0.1 ^5 run function api:object/summon
    execute rotated as @s[tag=C5.JumpFar] rotated ~ 0 positioned ^ ^0.1 ^10 run function api:object/summon

#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/windup
#
# 開始時の動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_slam/tween {to_frame: 10, duration: 3}

# Blesslessなら近くにプレイヤーが居ない場合ジャンプ距離を伸ばす
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add C5.JumpFar

# 最寄りのプレイヤーを見る
    execute facing entity @p[gamemode=!spectator,distance=..256] feet run tp @s ~ ~ ~ ~ ~

# 落下地点となるマーカーを置く
    execute rotated as @s[tag=!C5.JumpFar] rotated ~ 0 run summon marker ^ ^ ^5 {Tags:["C5.Marker","C5.Marker.SlamPoint"]}
    execute rotated as @s[tag=C5.JumpFar] rotated ~ 0 run summon marker ^ ^ ^10 {Tags:["C5.Marker","C5.Marker.SlamPoint"]}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [10f,10f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 40
    data modify storage api: Argument.ID set value 2063
    execute rotated as @s[tag=!C5.JumpFar] rotated ~ 0 positioned ^ ^0.1 ^5 run function api:object/summon
    execute rotated as @s[tag=C5.JumpFar] rotated ~ 0 positioned ^ ^0.1 ^10 run function api:object/summon

#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/windup
#
# 開始時の動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_slam/tween {to_frame: 10, duration: 3}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# 後半戦なら近くにプレイヤーが居ない場合ジャンプ距離を伸ばす
    execute if score @s C5.Phase matches 2.. unless entity @a[gamemode=!spectator,distance=..10] run tag @s add C5.JumpFar
    # Blesslessなら前半戦でもやる
        execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @a[gamemode=!spectator,distance=..10] run tag @s add C5.JumpFar

# 攻撃地点の決定
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/prediction.m {Tick:40}

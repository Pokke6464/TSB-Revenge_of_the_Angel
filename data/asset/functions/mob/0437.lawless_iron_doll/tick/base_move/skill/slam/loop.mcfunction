#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/loop
#
# ループさせる
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_slam/tween {to_frame: 28, duration: 4}

# Blesslessなら近くにプレイヤーが居ない場合ジャンプ距離を伸ばす
    tag @s remove C5.JumpFar
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @a[gamemode=!spectator,distance=..10] run tag @s add C5.JumpFar

# 攻撃地点の決定
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/prediction.m {Tick:20}

# ループ回数を記録
    execute unless data storage rota: {RuthlessMode:1b} if predicate api:global_vars/difficulty/min/3_blessless run tag @s[tag=C5.LoopCount.1] add C5.LoopCount.2
    execute unless data storage rota: {RuthlessMode:1b} run tag @s add C5.LoopCount.1

# スコアをジャンプ直前にする
    scoreboard players set @s General.Mob.Tick 19

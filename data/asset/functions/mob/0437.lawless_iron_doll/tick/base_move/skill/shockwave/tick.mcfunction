#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/tick
#
# ブーメランみたいに戻って来る奇っ怪な衝撃波。チャージ長め。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/windup

# 巨大タイプなら近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s[tag=C5.Skill.ShockWave.BigType] General.Mob.Tick matches 0.. facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 5 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 10 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s[tag=!C5.Skill.ShockWave.BigType] General.Mob.Tick matches 20 run playsound block.anvil.place hostile @a ~ ~ ~ 2 2

# 巨大タイプではないなら警告表示
    execute if score @s[tag=!C5.Skill.ShockWave.BigType] General.Mob.Tick matches 10 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/alert/

# 巨大タイプではないなら少しスキップ
    execute if score @s[tag=!C5.Skill.ShockWave.BigType] General.Mob.Tick matches 22 run scoreboard players set @s General.Mob.Tick 42

# 巨大タイプの演出
    execute if score @s[tag=C5.Skill.ShockWave.BigType] General.Mob.Tick matches 0..35 run particle trial_spawner_detection ~ ~1.5 ~ 1 1.25 1 0 2 force @a[distance=..32]
    execute if score @s General.Mob.Tick matches 35 run particle firework ~ ~2 ~ 0.5 0.5 0.5 0.5 40 force @a[distance=..32]
    execute if score @s General.Mob.Tick matches 35 run playsound item.trident.return hostile @a ~ ~ ~ 2 0.75
    execute if score @s General.Mob.Tick matches 35 run playsound item.trident.return hostile @a ~ ~ ~ 2 1.0

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 42 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_3_activate/tween {to_frame: 0, duration: 1}

# 薙ぎ払い、そして飛んでいくオブジェクト
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/activate

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 70 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}

# リセット
    execute if score @s General.Mob.Tick matches 80.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

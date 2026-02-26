#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/tick
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/windup

# 近くのプレイヤーの方にそこそこの速度で向き直る
    # ノーマルなど
        execute if score @s General.Mob.Tick matches 0..30 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # ハード
        execute if predicate api:global_vars/difficulty/2_hard if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 0..80 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 0..90 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 後半戦でミストタイプじゃなければ2way予告線を表示
    execute if score @s[tag=!C5.Skill.LingeringLaser.MistType,scores={C5.Phase=2..}] General.Mob.Tick matches 0..30 positioned ~ ~1.5 ~ positioned ^ ^ ^2 rotated ~25 3 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/line_particle
    execute if score @s[tag=!C5.Skill.LingeringLaser.MistType,scores={C5.Phase=2..}] General.Mob.Tick matches 0..30 positioned ~ ~1.5 ~ positioned ^ ^ ^2 rotated ~-25 3 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/line_particle

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 25 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 27 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_1_activate/tween {to_frame: 0, duration: 1}

# 発射
    execute if score @s[tag=!C5.Skill.LingeringLaser.MistType,scores={C5.Phase=1}] General.Mob.Tick matches 30 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate/laser
    execute if score @s[tag=!C5.Skill.LingeringLaser.MistType,scores={C5.Phase=2..}] General.Mob.Tick matches 30 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate/2way_laser
    execute if score @s[tag=C5.Skill.LingeringLaser.MistType] General.Mob.Tick matches 30 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate/mist

# 追撃しない場合のリセット
    execute if predicate api:global_vars/difficulty/1_normal if score @s General.Mob.Tick matches 65.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
    execute if score @s[scores={C5.Phase=1}] General.Mob.Tick matches 65.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

# 追撃のレーザー
    # 発射前のアニメーションで暫く止めておく
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 40 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_1_windup/tween {to_frame: 20, duration: 4}
    # 予告線
        execute if predicate api:global_vars/difficulty/2_hard if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 40..70 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/line_particle
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 40..90 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/line_particle

    # ハード以降、第二形態で一発
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 62 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_1_activate/tween {to_frame: 0, duration: 1}
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 65 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate/laser
    # リセット
        execute if predicate api:global_vars/difficulty/max/2_hard if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 80 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

    # Blessless以降、第二形態でさらに一発
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 82 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_1_activate/tween {to_frame: 0, duration: 1}
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 85 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/lingering_laser/activate/laser
    # リセット
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 100 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

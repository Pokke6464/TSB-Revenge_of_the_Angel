#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main
#
# アニメーションのイベントハンドラ 点睛
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 中心点に移動
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/animation_1
    # 移動
        execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..40] feet run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 4 run particle flash ^3 ^ ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 9 run particle flash ^-3 ^ ^ 0 0 0 0 1

# animated javaアニメーション再生
    execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/animation_0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 15..33 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 15..33 as @a[tag=!PlayerShouldInvulnerable,distance=..40,sort=furthest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 移動
        # 飛び上がる / 強化後半戦では更に高く飛ぶ
            execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 34..50 at @s run tp @s ^ ^0.25 ^0.45
            execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 34..50 at @s run tp @s ^ ^0.5 ^0.45
            execute if score @s 93.AnimationTimer matches 51..63 at @s run tp @s ^ ^ ^0.15
        # 落下
            execute if score @s 93.AnimationTimer matches 64 run function asset:mob/0327.eclael/tick/app.general/move_to_ground
            execute if score @s 93.AnimationTimer matches 64 at @s run tp @s ~ ~0.5 ~
        # 微調整
            execute if score @s 93.AnimationTimer matches 93..97 run tp @s ~ ~0.09 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 34 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 62 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 2 0.7
        execute if score @s 93.AnimationTimer matches 68 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.4
        execute if score @s 93.AnimationTimer matches 66 positioned ^ ^0.6 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/particle_jump
        execute if score @s 93.AnimationTimer matches 69 positioned ^ ^0.6 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/particle_jump
        execute if score @s 93.AnimationTimer matches 84 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 120 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 1.7

# 攻撃
    execute if score @s 93.AnimationTimer matches 66 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_0
    execute if score @s 93.AnimationTimer matches 73 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_1
    execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 82 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_2.m {rotation:15}
    execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 91 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_2.m {rotation:30}
    # 強化後半戦ではスピードアップ
        execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 80 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_2.m {rotation:15}
        execute if entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] if score @s 93.AnimationTimer matches 87 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_2.m {rotation:30}

# 終了
    execute if score @s 93.AnimationTimer matches 142.. run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/end
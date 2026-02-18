#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main
#
# アニメーションのイベントハンドラ 前半・簡易魔法
# プレイヤーを狙った魔法を短い動作で放つ．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 魔法発射
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/3_0.play_magic_animation
# 演出
    execute if score @s 93.AnimationTimer matches 14 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 45 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 55 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 1
# チェインタイプならここから先は別のfunctionで処理する
    execute if entity @s[tag=93.Skill.Former.ShortMagic.ChainType] run return run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/main

# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..14 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..14 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 1..14 run tag @s remove 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..44 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..44 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 30..44 run tag @s remove 93.Temp.Me
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 4 at @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:52,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 24 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.3.move_attack_pos
# 予兆
    # execute if score @s 93.AnimationTimer matches 14 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.2.1.particle_0
    # execute if score @s 93.AnimationTimer matches 45 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.2.2.particle_1
# 攻撃
    execute if score @s 93.AnimationTimer matches 5 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.1.attack_0
    # 挟みこみ
        execute if score @s 93.AnimationTimer matches 25 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^-5 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 27 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^ ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 29 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^5 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 25 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^5 ^ ^-15 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 27 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^ ^ ^-15 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 29 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^-5 ^ ^-15 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
    # 隙間埋め
        execute if score @s 93.AnimationTimer matches 43 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^ ^ ^-7.5 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 45 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^-5 ^ ^-7.5 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 45 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^5 ^ ^-7.5 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 47 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^-10 ^ ^-7.5 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
        execute if score @s 93.AnimationTimer matches 47 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] positioned ^10 ^ ^-7.5 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1

# 終了
    execute if score @s 93.AnimationTimer matches 81.. run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/2.end
#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/main
#
# アニメーションのイベントハンドラ 前半・簡易魔法 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

# ターゲット保持
    function asset:mob/0327.eclael/tick/app.general/check_target
    function asset:mob/0327.eclael/tick/app.general/update_target

# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..14 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..14 as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 1..14 run tag @s remove 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..44 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..44 as @p[tag=93.Temp.Target,distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 30..44 run tag @s remove 93.Temp.Me

# 攻撃
    # エクレールからターゲットへ自機狙い
        execute if score @s 93.AnimationTimer matches 15 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/attack_0
    # ターゲット周囲のランダムな3方向から自機狙い
        execute if score @s 93.AnimationTimer matches 44 at @p[tag=93.Temp.Target,distance=..80] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","93.Aec.AttackPos"]}
        execute if score @s 93.AnimationTimer matches 45 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/attack_1
        execute if score @s 93.AnimationTimer matches 48 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/attack_1
        execute if score @s 93.AnimationTimer matches 51 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/attack_1

# 後隙用の待機
# animated javaアニメーション再生 (長さ：30tick)
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/chain_type/play_idle_animation

# ターゲット解放
    tag @a remove 93.Temp.Target

# 終了
    execute if score @s 93.AnimationTimer matches 111.. run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/2.end

#> asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.1.decide_attack_pos_player
#
# アニメーションのイベントハンドラ 前半・曲射 攻撃地点決定 プレイヤー狙い
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/1.main

# 位置決定用Entity召喚
    execute rotated ~ 0 run summon area_effect_cloud ~ ~0.25 ~ {CustomNameVisible:0b,Particle:"block air",Duration:100,Tags:["Object","93.Aec.AttackPos","93.Aec.AttackPos_2"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[2,2],[0,0],[2,2]]
    execute as @e[type=area_effect_cloud,tag=93.Aec.AttackPos_2,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.2.spread_attack_pos

# 終了
    scoreboard players set @s 93.SubTimer 0

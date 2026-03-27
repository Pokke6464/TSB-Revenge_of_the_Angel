#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/main
#
# アニメーションのイベントハンドラ 後半・全体落雷 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main

# ターゲット保持
    function asset:mob/0327.eclael/tick/app.general/check_target
    function asset:mob/0327.eclael/tick/app.general/update_target

# 自機狙い攻撃の対象を予告
    execute if score @s 93.AnimationTimer matches 11 run data modify storage api: Argument.ID set value 8009
    execute if score @s 93.AnimationTimer matches 11 at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] positioned ~ ~-2.25 ~ run function api:object/summon
    execute if score @s 93.AnimationTimer matches 11..60 as @e[type=item_display,tag=8009.Line,tag=93.Object] at @s run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction_line

# 攻撃範囲表示(あくまで雷の通り道を示すため点滅させる)
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s 93.AnimationTimer matches 13 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m {Width:7}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s 93.AnimationTimer matches 30 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m {Width:7}
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s 93.AnimationTimer matches 47 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m {Width:7}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 93.AnimationTimer matches 13 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m {Width:10}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 93.AnimationTimer matches 30 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m {Width:10}
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 93.AnimationTimer matches 47 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction.m {Width:10}

# 攻撃
    # 中央からターゲットへ自機狙い / Blesslessなら最後に加速する
        execute if predicate api:global_vars/difficulty/max/2_hard if score @s 93.AnimationTimer matches 60..200 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m {Interval:15,Attack:0}
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 93.AnimationTimer matches 60..150 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m {Interval:15,Attack:0}
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 93.AnimationTimer matches 150..200 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m {Interval:7,Attack:0}
    # 外周のランダムな8箇所から攻撃 / Hard以上なら最後に加速する
        execute if predicate api:global_vars/difficulty/1_normal if score @s 93.AnimationTimer matches 60..200 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m {Interval:20,Attack:1}
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s 93.AnimationTimer matches 60..140 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m {Interval:20,Attack:1}
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s 93.AnimationTimer matches 150..200 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/attack_check.m {Interval:5,Attack:1}

# ターゲット解放
    tag @a remove 93.Temp.Target
    
# 後隙用の待機
# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 151 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/play_idle_animation
    execute if score @s 93.AnimationTimer matches 211 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/play_idle_animation

# 終了
    execute if score @s 93.AnimationTimer matches 271.. run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/2.end

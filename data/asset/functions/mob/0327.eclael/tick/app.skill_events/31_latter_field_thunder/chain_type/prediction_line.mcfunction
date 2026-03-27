#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/prediction_line
#
# アニメーションのイベントハンドラ 後半・全体落雷 チェインタイプ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/main

# プレイヤーを向く
    execute facing entity @p[tag=93.Temp.Target,distance=..80] feet rotated ~ ~-1 run function lib:rotate_display/

# 距離測定
    execute as @p[tag=93.Temp.Target,distance=..80] run function lib:distance/as_to_at
    execute store result entity @s transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return

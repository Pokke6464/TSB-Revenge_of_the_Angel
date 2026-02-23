#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/slam_point_adjustments
#
# 落下地点を調整する
#
# @within function 
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/windup
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/loop

# マーカーから3ブロック上が埋まっているならここでreturn
    execute at @s unless block ~ ~3 ~ #lib:no_collision run return fail

# 3ブロックまでの段差なら登る
    execute at @s unless block ~ ~2 ~ #lib:no_collision run tp @s ~ ~1 ~
    execute at @s unless block ~ ~1 ~ #lib:no_collision run tp @s ~ ~1 ~
    execute at @s unless block ~ ~ ~ #lib:no_collision run tp @s ~ ~1 ~

# 3ブロックまで埋まっていないかつ浮いているなら1マス下に
    execute at @s if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision if block ~ ~2 ~ #lib:no_collision if block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~-1 ~

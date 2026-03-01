#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/5.3.particle_3way_line
#
# アニメーションのイベントハンドラ 前半・居合斬り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main

particle dust -0.01 -0.01 1 0.75 ^0 ^ ^2 0 0 0 0 1
particle dust -0.01 -0.01 1 0.75 ^0 ^ ^3 0 0 0 0 1
particle dust -0.01 1 1 0.75 ^0 ^ ^4 0 0 0 0 1
particle dust -0.01 1 1 0.75 ^0 ^ ^5 0 0 0 0 1
particle dust -0.01 1 -0.01 0.75 ^0 ^ ^6 0 0 0 0 1
particle dust -0.01 1 -0.01 0.75 ^0 ^ ^7 0 0 0 0 1

execute rotated ~10 ~ run particle dust -0.01 -0.01 1 0.75 ^0 ^ ^2 0 0 0 0 1
execute rotated ~10 ~ run particle dust -0.01 -0.01 1 0.75 ^0 ^ ^3 0 0 0 0 1
execute rotated ~10 ~ run particle dust -0.01 1 1 0.75 ^0 ^ ^4 0 0 0 0 1
execute rotated ~10 ~ run particle dust -0.01 1 1 0.75 ^0 ^ ^5 0 0 0 0 1
execute rotated ~10 ~ run particle dust -0.01 1 -0.01 0.75 ^0 ^ ^6 0 0 0 0 1
execute rotated ~10 ~ run particle dust -0.01 1 -0.01 0.75 ^0 ^ ^7 0 0 0 0 1

execute rotated ~-10 ~ run particle dust -0.01 -0.01 1 0.75 ^0 ^ ^2 0 0 0 0 1
execute rotated ~-10 ~ run particle dust -0.01 -0.01 1 0.75 ^0 ^ ^3 0 0 0 0 1
execute rotated ~-10 ~ run particle dust -0.01 1 1 0.75 ^0 ^ ^4 0 0 0 0 1
execute rotated ~-10 ~ run particle dust -0.01 1 1 0.75 ^0 ^ ^5 0 0 0 0 1
execute rotated ~-10 ~ run particle dust -0.01 1 -0.01 0.75 ^0 ^ ^6 0 0 0 0 1
execute rotated ~-10 ~ run particle dust -0.01 1 -0.01 0.75 ^0 ^ ^7 0 0 0 0 1
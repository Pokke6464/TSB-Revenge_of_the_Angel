scoreboard players add @s 93.ActionCount 1
execute if score @s 93.ActionCount matches 26.. run scoreboard players set @s 93.ActionCount 1
execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.Latter.Whip
execute if score @s 93.ActionCount matches 3..5 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 6 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
execute if score @s 93.ActionCount matches 7 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
execute if score @s 93.ActionCount matches 8..9 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 10 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Latter.SpinSlash
execute if score @s 93.ActionCount matches 12 run function asset:mob/0327.eclael/tick/app.1_11_2.select_skill_latter_hard_former_moveback
execute if score @s 93.ActionCount matches 13..14 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 15 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
execute if score @s 93.ActionCount matches 16 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
execute if score @s 93.ActionCount matches 17..18 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 19 run tag @s add 93.Skill.Latter.Whip
execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 21 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
execute if score @s 93.ActionCount matches 22 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
execute if score @s 93.ActionCount matches 23..25 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
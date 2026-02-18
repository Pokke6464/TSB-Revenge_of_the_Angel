scoreboard players add @s 93.ActionCount 1
execute if score @s 93.ActionCount matches 24.. run scoreboard players set @s 93.ActionCount 1
execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.Latter.Whip
execute if score @s 93.ActionCount matches 3..5 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 6 run tag @s add 93.Skill.Latter.Quick
execute if score @s 93.ActionCount matches 7 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 8..9 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 10 run tag @s add 93.Skill.Latter.SpinSlash
execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 12..13 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 14 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
execute if score @s 93.ActionCount matches 15 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 16 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 17 run tag @s add 93.Skill.Latter.Quick
execute if score @s 93.ActionCount matches 18 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 19 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.Latter.Idle
execute if score @s 93.ActionCount matches 21..22 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
execute if score @s 93.ActionCount matches 23 run tag @s add 93.Skill.Latter.SpinSlash
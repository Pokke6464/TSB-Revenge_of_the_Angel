execute store result score $Random Temporary run random value 0..2
execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.MoveSlash
execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Iai
execute if score $Random Temporary matches 2 run function asset:mob/0327.eclael/tick/app.1_9.select_skill_latter_spear
scoreboard players reset $Random Temporary
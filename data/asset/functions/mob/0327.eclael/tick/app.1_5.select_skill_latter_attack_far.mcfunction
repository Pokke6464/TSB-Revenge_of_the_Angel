execute store result score $Random Temporary run random value 0..2
execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.Iai
execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Shot
execute if score $Random Temporary matches 2 run tag @s add 93.Skill.Latter.Move
scoreboard players reset $Random Temporary
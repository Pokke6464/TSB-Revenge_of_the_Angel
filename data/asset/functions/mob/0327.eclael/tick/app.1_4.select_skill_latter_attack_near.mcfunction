execute unless score $PlayerCount Global matches 2.. store result score $Random Temporary run random value 0..3
execute if score $PlayerCount Global matches 2.. store result score $Random Temporary run random value 0..4
execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.MoveSlash
execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Iai
execute if score $Random Temporary matches 2 run tag @s add 93.Skill.Latter.Shot
execute if score $Random Temporary matches 3 run function asset:mob/0327.eclael/tick/app.1_9.select_skill_latter_spear
execute if score $Random Temporary matches 4 if predicate lib:random_pass_per/50 unless entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..15] run tag @s add 93.Skill.Latter.Move.Back
execute unless entity @s[tag=93.Skill.Latter.Move.Back] if score $Random Temporary matches 4 run tag @s add 93.Skill.Latter.Move
scoreboard players reset $Random Temporary
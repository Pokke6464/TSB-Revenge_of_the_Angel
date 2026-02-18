execute unless entity @a[tag=!PlayerShouldInvulnerable,distance=..8] run tag @s add 93.Skill.Latter.Move
execute if entity @s[tag=!93.Skill.Latter.Move] run scoreboard players add @s 93.ActionCount 1
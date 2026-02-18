execute if entity @p[tag=93.Temp.Target,distance=..80] run return 0
tag @a remove 93.Temp.Target
tag @p[tag=!PlayerShouldInvulnerable,distance=..80] add 93.Temp.Target
execute unless entity @p[tag=93.Temp.Target,distance=..80] run tag @p add 93.Temp.Target
scoreboard players operation @s 93.TargetUserId = @p[tag=93.Temp.Target,distance=..80] UserId
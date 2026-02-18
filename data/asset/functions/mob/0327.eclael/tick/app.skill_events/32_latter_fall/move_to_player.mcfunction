summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground
execute positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run tp @s ~ ~3.5 ~ ~ 0
kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80]
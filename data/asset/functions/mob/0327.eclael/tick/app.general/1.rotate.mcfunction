tag @s add 93.Temp.GeneralTarget
execute as @e[type=wither_skeleton,tag=93.Temp.Me,distance=..80,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @a[tag=93.Temp.GeneralTarget,distance=..80] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
tag @s remove 93.Temp.GeneralTarget
tag @e[type=wither_skeleton,tag=93.Temp.Me,distance=..80,sort=nearest,limit=1] remove 93.Temp.Me
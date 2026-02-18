execute if predicate lib:random_pass_per/10 run tag @s add 93.Temp.Me
execute if entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/10_1_latter_idle_rare/tween {duration:1, to_frame: 1}
execute unless entity @s[tag=93.Temp.Me] as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/10_0_latter_idle_normal/tween {duration:1, to_frame: 1}
tag @s remove 93.Temp.Me
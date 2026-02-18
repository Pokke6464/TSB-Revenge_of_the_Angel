execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/3.play_animation
execute if score @s 93.AnimationTimer matches 1 run effect give @s resistance infinite 7 true
execute if score @s 93.AnimationTimer matches 1..8 at @s positioned ^ ^ ^-0.7 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 9..13 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 14..20 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 21..34 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
execute if score @s 93.AnimationTimer matches 45 run effect clear @s resistance
execute if score @s 93.AnimationTimer matches 1 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/variants/default/apply
execute if score @s 93.AnimationTimer matches 46.. run function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/2.end
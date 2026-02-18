execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/3_1.play_shot_animation
execute if score @s 93.AnimationTimer matches 1..25 run tag @s add 93.Temp.Me
execute if score @s 93.AnimationTimer matches 1..25 as @p[distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
execute if score @s 93.AnimationTimer matches 32..37 run tag @s add 93.Temp.Me
execute if score @s 93.AnimationTimer matches 32..37 as @p[distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
execute if score @s 93.AnimationTimer matches 1..6 at @s positioned ^-0.1 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 7..12 at @s positioned ^-0.05 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 13..16 at @s positioned ^-0.02 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 30..33 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 40..43 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 60..89 at @s positioned ^ ^-0.03 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.7
execute if score @s 93.AnimationTimer matches 95.. run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/2.end
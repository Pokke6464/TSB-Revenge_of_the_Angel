execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/3_0.play_damage_animation
execute if score @s 93.AnimationTimer matches 1..5 at @s positioned ^ ^-0.4 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 6..15 at @s positioned ^ ^-0.05 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/3_1.play_end_animation
execute if score @s 93.AnimationTimer matches 106..111 at @s positioned ^ ^0.05 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 131.. run function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/2.end
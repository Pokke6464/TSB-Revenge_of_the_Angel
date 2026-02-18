execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/3_0.play_start_animation
execute if score @s 93.AnimationTimer matches 45 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
execute if score @s 93.AnimationTimer matches 1..4 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 5..10 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 11..15 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 30..35 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 36..45 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
execute if score @s 93.AnimationTimer matches 71.. run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/2.end
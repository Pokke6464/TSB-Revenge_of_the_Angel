function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations
tag @s add 93.Skill.Former.Iai.Damage
scoreboard players set @s 93.AnimationTimer 0
tag @s remove 93.Temp.NotArmor
playsound entity.item.break hostile @a ~ ~ ~ 1 0.5
playsound entity.item.break hostile @a ~ ~ ~ 1 0.6
playsound item.trident.return hostile @a ~ ~ ~ 1 1.5
playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
particle flash ^ ^1 ^1 0 0 0 0 1
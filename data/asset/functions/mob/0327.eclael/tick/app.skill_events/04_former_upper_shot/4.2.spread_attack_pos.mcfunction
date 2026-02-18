function lib:spread_entity/
execute at @s if entity @s[tag=!93.Temp.GeneralTarget] positioned ~ ~4 ~ if entity @e[type=item_display,tag=93.ModelRoot,distance=..2] run tp @s ~ ~ ~
execute at @s run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.2.1.particle_attack_pos
execute rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:100,Tags:["Object","93.Aec.AttackPos","93.Temp.GeneralTarget"]}
data modify storage lib: Argument.Bounds set value [[8,8],[0,0],[8,8]]
execute as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,tag=!93.Aec.AttackPos.Init,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.2.spread_attack_pos
scoreboard players set @s 93.SubTimer 0
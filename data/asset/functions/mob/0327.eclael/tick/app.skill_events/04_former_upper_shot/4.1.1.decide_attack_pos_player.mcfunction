summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:100,Tags:["Object","93.Aec.AttackPos"]}
data modify storage lib: Argument.Bounds set value [[1,1],[0,0],[1,1]]
execute as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.2.spread_attack_pos
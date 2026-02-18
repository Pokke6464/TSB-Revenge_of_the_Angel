#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main
#
# アニメーションのイベントハンドラ 後半・全体落雷
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：100tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/3.play_animation
# 演出
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 13 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 3 1.5
    execute if score @s 93.AnimationTimer matches 13 positioned ~ ~4 ~ run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/particle_circle
    execute if score @s 93.AnimationTimer matches 14 positioned ~ ~9 ~ run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/particle_circle
    execute if score @s 93.AnimationTimer matches 15 positioned ~ ~14 ~ run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/particle_circle
    execute if score @s 93.AnimationTimer matches 40 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 40 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 57 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    execute if score @s 93.AnimationTimer matches 57 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 57 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 59 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 57 run particle firework ~ ~4 ~ 0 0 0 0.3 50
    execute if score @s 93.AnimationTimer matches 137 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2

# チェインタイプならここから先は別のfunctionで処理する
    execute if entity @s[tag=93.Skill.FieldThunder.ChainType] run return run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/chain_type/main
    
# 攻撃
    execute if score @s 93.AnimationTimer matches 60..140 run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack_check

# 終了
    execute if score @s 93.AnimationTimer matches 151.. run function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/2.end

#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main
#
# アニメーションのイベントハンドラ 前半・連続斬り
# 一気に近づいて連続で斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 構え
# animated javaアニメーション再生 (長さ：31tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_0.play_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1 facing entity @p[distance=..80] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 2..31 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 2..31 as @p[distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 5 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 2..10 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 11..13 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 20..28 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 26..27 at @s run tp @s ~ ~0.4 ~
    execute if score @s 93.AnimationTimer matches 28..31 at @s run tp @s ~ ~0.1 ~
    execute if score @s 93.AnimationTimer matches 2..15 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 演出
    execute if score @s 93.AnimationTimer matches 26 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 26 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 26 run particle block sea_lantern ~ ~0.1 ~ 0.5 0 0.5 0.1 10

## 攻撃0
# animated javaアニメーション再生 (長さ：15tick)
    execute if score @s 93.AnimationTimer matches 32 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_1.play_slash_0_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 45..55 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 45..55 as @p[distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 32..36 at @s positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 37..45 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 33 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.1.attack_slash_0

## 攻撃1
# animated javaアニメーション再生 (長さ：15tick)
    execute if score @s 93.AnimationTimer matches 47 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_2.play_slash_1_animation
# 移動
    execute if score @s 93.AnimationTimer matches 47..61 at @s positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 62..70 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 48 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.2.attack_slash_1
# animated javaアニメーション再生 (長さ：15tick)
    execute if score @s 93.AnimationTimer matches 57 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_2.play_slash_1_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 58 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.2.attack_slash_1

## 居合構え
# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 93.AnimationTimer matches 73 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_3.play_start_iai_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 73..123 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 73..123 as @p[distance=..80] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 73..83 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 73..75 at @s positioned ~ ~-0.4 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 76..78 at @s positioned ~ ~-0.1 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 73..75 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 演出
    execute if score @s 93.AnimationTimer matches 73..78 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 73 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 80 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 80 run particle electric_spark ^0.5 ^0.8 ^ 0 0 0 1 10
# 反射タイプではない場合はここで居合切りまでスキップ
    execute unless entity @s[tag=93.Skill.Former.Slash.ReflectType] if score @s 93.AnimationTimer matches 83 run scoreboard players set @s 93.AnimationTimer 123
# 演出
    execute if entity @s[tag=93.Skill.Former.Slash.ReflectType] if score @s 93.AnimationTimer matches 80..120 run particle dust 1 -0.01 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 3 force
    execute if entity @s[tag=93.Skill.Former.Slash.ReflectType] if score @s 93.AnimationTimer matches 115 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1.5 1.8
    execute if entity @s[tag=93.Skill.Former.Slash.ReflectType] if score @s 93.AnimationTimer matches 115 run particle electric_spark ^0.5 ^0.8 ^ 0 0 0 1 10

## 居合斬り
# animated javaアニメーション再生 (長さ：110tick)
    execute if score @s 93.AnimationTimer matches 125 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_4.play_iai_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 126 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.3.attack_slash_2
# 演出
    execute if score @s 93.AnimationTimer matches 128 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 174 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.4
    execute if score @s 93.AnimationTimer matches 174 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 174 run particle firework ^-1.5 ^0.3 ^-0.3 0 0 0 0.1 3
    execute if score @s 93.AnimationTimer matches 192 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.8
    execute if score @s 93.AnimationTimer matches 197 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.8
    execute if score @s 93.AnimationTimer matches 205 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2

# 終了
    execute if score @s 93.AnimationTimer matches 225.. run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/2.end
#> asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/1.main
#
# アニメーションのイベントハンドラ 前半・魔法
# 力を溜めたのち，広範囲に雷を落とす．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 共通
    # animated javaアニメーション再生 (長さ：70tick)
        execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/3_0.play_magic_animation
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 1..8 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 1..8 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
        execute if score @s 93.AnimationTimer matches 1..8 run tag @s remove 93.Temp.Me
    # 演出
        execute if score @s 93.AnimationTimer matches 16 run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 2 1.7
        execute if score @s 93.AnimationTimer matches 35 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.7
        execute if score @s 93.AnimationTimer matches 35 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.7
    # 後隙用の待機
    # animated javaアニメーション再生 (長さ：30tick)
        execute if score @s 93.AnimationTimer matches 71 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/3_1.play_idle_animation

# 折り返しパターン
    # 攻撃
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 15 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.3.1.attack_0
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.4.1.attack_1
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 55 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.5.1.attack_2
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 75 rotated ~35 ~ run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.4.1.attack_1
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 95 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.3.1.attack_0
    # 演出
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 45 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 65 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 85 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 105 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 125 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
    # 終了
        execute if score @s[tag=!93.Skill.Former.Magic.MovingType] 93.AnimationTimer matches 126.. run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/2.end

# 折り返しパターンならここでreturn
    execute if entity @s[tag=!93.Skill.Former.Magic.MovingType] run return 0

# 予告範囲が動くパターン
    # 攻撃
        execute if score @s 93.AnimationTimer matches 15 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.6.1.attack_3
        execute if score @s 93.AnimationTimer matches 35 rotated ~25 ~ run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.6.1.attack_3
        execute if score @s 93.AnimationTimer matches 55 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.6.1.attack_3
    # 演出
        execute if score @s 93.AnimationTimer matches 55 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 75 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 95 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
    # 終了
        execute if score @s 93.AnimationTimer matches 101.. run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/2.end

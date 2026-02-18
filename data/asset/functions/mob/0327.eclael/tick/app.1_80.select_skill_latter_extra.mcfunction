#> asset:mob/0327.eclael/tick/app.1_80.select_skill_latter_extra
#
# 使用するスキルを決定する・強化後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_1.select_skill

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    #execute unless score @s 93.ActionCount matches 5 run scoreboard players set @s 93.ActionCount 5
    execute if score @s 93.ActionCount matches 32.. run scoreboard players set @s 93.ActionCount 1

## 位置リセット
# 天泣
    execute if score @s 93.ActionCount matches 1 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.MoveSlash
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 3 run tag @s add 93.Skill.Tensei
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 4 run tag @s add 93.Skill.Circle
# 残心・居合
    execute if score @s 93.ActionCount matches 5 run tag @s add 93.Skill.Beam
# 移動斬り
    execute if score @s 93.ActionCount matches 6 run tag @s add 93.Skill.MoveSlash
# 曲射
    execute if score @s 93.ActionCount matches 7 run tag @s add 93.Skill.UpperShot

## 仕切り直し
# 天泣
    execute if score @s 93.ActionCount matches 8 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 9 run tag @s add 93.Skill.MoveSlash
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 10 run tag @s add 93.Skill.Tensei
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Circle
# 残心・居合
    execute if score @s 93.ActionCount matches 12 run tag @s add 93.Skill.Beam
# 移動斬り
    execute if score @s 93.ActionCount matches 13 run tag @s add 93.Skill.MoveSlash
# 曲射
    execute if score @s 93.ActionCount matches 14 run tag @s add 93.Skill.UpperShot
## 位置リセット
# 雷斗星刃・当流
    execute if score @s 93.ActionCount matches 15 run tag @s add 93.Skill.FieldSlash
# 全体落雷
    execute if score @s 93.ActionCount matches 16 run tag @s add 93.Skill.FieldThunder
# 光速攻撃
    execute if score @s 93.ActionCount matches 17 run tag @s add 93.Skill.LightSpeedAttack

## パターン切り替え
# 残心・居合
    execute if score @s 93.ActionCount matches 18 run tag @s add 93.Skill.Beam
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 19 run tag @s add 93.Skill.Tensei
# 移動斬り
    execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.MoveSlash
# 天泣
    execute if score @s 93.ActionCount matches 21 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 22 run tag @s add 93.Skill.MoveSlash
# 曲射
    execute if score @s 93.ActionCount matches 23 run tag @s add 93.Skill.UpperShot
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 24 run tag @s add 93.Skill.Circle

## 仕切り直し
# 残心・居合
    execute if score @s 93.ActionCount matches 25 run tag @s add 93.Skill.Beam
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 26 run tag @s add 93.Skill.Tensei
# 移動斬り
    execute if score @s 93.ActionCount matches 27 run tag @s add 93.Skill.MoveSlash
# 天泣
    execute if score @s 93.ActionCount matches 28 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 29 run tag @s add 93.Skill.MoveSlash
# 曲射
    execute if score @s 93.ActionCount matches 30 run tag @s add 93.Skill.UpperShot
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 31 run tag @s add 93.Skill.Circle
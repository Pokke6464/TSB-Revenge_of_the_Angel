#> asset:mob/0327.eclael/tick/app.1_3.select_skill_latter
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_1.select_skill

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    #execute unless score @s 93.ActionCount matches 10 run scoreboard players set @s 93.ActionCount 10
    execute if score @s 93.ActionCount matches 59..99 run scoreboard players set @s 93.ActionCount 1
    execute if score @s 93.ActionCount matches 111.. run scoreboard players set @s 93.ActionCount 6

## 位置リセット
# 光速攻撃
    execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.LightSpeedAttack
# 全体落雷
    execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.FieldThunder
# 待機
    execute if score @s 93.ActionCount matches 3..4 run tag @s add 93.Skill.Latter.Idle
# 天泣
    execute if score @s 93.ActionCount matches 5 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 6 run tag @s add 93.Skill.MoveSlash
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 7 run tag @s add 93.Skill.Tensei
# 待機
    execute if score @s 93.ActionCount matches 8 run tag @s add 93.Skill.Latter.Idle
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 9 run tag @s add 93.Skill.Circle
# 残心・居合
    execute if score @s 93.ActionCount matches 10 run tag @s add 93.Skill.Beam
# 移動斬り
    execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.MoveSlash
# 待機
    execute if score @s 93.ActionCount matches 12 run tag @s add 93.Skill.Latter.Idle
## 位置リセット
# 曲射
    execute if score @s 93.ActionCount matches 13 run tag @s add 93.Skill.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 14..15 run tag @s add 93.Skill.Latter.Idle

## 仕切り直し
## 位置リセット
# 雷斗星刃・当流
    execute if score @s 93.ActionCount matches 16 run tag @s add 93.Skill.FieldSlash
# 待機
    execute if score @s 93.ActionCount matches 17..18 run tag @s add 93.Skill.Latter.Idle
# 天泣
    execute if score @s 93.ActionCount matches 19 run tag @s add 93.Skill.Fall
# 待機
    execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.Latter.Idle
# 移動斬り
    execute if score @s 93.ActionCount matches 21 run tag @s add 93.Skill.MoveSlash
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 22 run tag @s add 93.Skill.Tensei
# 待機
    execute if score @s 93.ActionCount matches 23 run tag @s add 93.Skill.Latter.Idle
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 24 run tag @s add 93.Skill.Circle
# 残心・居合
    execute if score @s 93.ActionCount matches 25 run tag @s add 93.Skill.Beam
# 移動斬り
    execute if score @s 93.ActionCount matches 26 run tag @s add 93.Skill.MoveSlash
# 待機
    execute if score @s 93.ActionCount matches 27 run tag @s add 93.Skill.Latter.Idle
## 位置リセット
# 曲射
    execute if score @s 93.ActionCount matches 28 run tag @s add 93.Skill.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 29..30 run tag @s add 93.Skill.Latter.Idle

## パターン切り替え
# 全体落雷
    execute if score @s 93.ActionCount matches 31 run tag @s add 93.Skill.FieldThunder
# 待機
    execute if score @s 93.ActionCount matches 32 run tag @s add 93.Skill.Latter.Idle
# 残心・居合
    execute if score @s 93.ActionCount matches 33 run tag @s add 93.Skill.Beam
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 34 run tag @s add 93.Skill.Tensei
# 待機
    execute if score @s 93.ActionCount matches 35 run tag @s add 93.Skill.Latter.Idle
# 移動斬り
    execute if score @s 93.ActionCount matches 36 run tag @s add 93.Skill.MoveSlash
# 天泣
    execute if score @s 93.ActionCount matches 37 run tag @s add 93.Skill.Fall
# 移動斬り
    execute if score @s 93.ActionCount matches 38 run tag @s add 93.Skill.MoveSlash
# 待機
    execute if score @s 93.ActionCount matches 39 run tag @s add 93.Skill.Latter.Idle
## 位置リセット
# 曲射
    execute if score @s 93.ActionCount matches 40 run tag @s add 93.Skill.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 41..42 run tag @s add 93.Skill.Latter.Idle
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 43 run tag @s add 93.Skill.Circle

## 仕切り直し
## 位置リセット
# 雷斗星刃・当流
    execute if score @s 93.ActionCount matches 44 run tag @s add 93.Skill.FieldSlash
# 待機
    execute if score @s 93.ActionCount matches 45..46 run tag @s add 93.Skill.Latter.Idle
# 残心・居合
    execute if score @s 93.ActionCount matches 47 run tag @s add 93.Skill.Beam
## 位置リセット
# 点睛
    execute if score @s 93.ActionCount matches 48 run tag @s add 93.Skill.Tensei
# 待機
    execute if score @s 93.ActionCount matches 49 run tag @s add 93.Skill.Latter.Idle
# 移動斬り
    execute if score @s 93.ActionCount matches 50 run tag @s add 93.Skill.MoveSlash
# 天泣
    execute if score @s 93.ActionCount matches 51 run tag @s add 93.Skill.Fall
# 待機
    execute if score @s 93.ActionCount matches 52 run tag @s add 93.Skill.Latter.Idle
# 移動斬り
    execute if score @s 93.ActionCount matches 53 run tag @s add 93.Skill.MoveSlash
# 待機
    execute if score @s 93.ActionCount matches 54 run tag @s add 93.Skill.Latter.Idle
## 位置リセット
# 曲射
    execute if score @s 93.ActionCount matches 55 run tag @s add 93.Skill.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 56..57 run tag @s add 93.Skill.Latter.Idle
# 雷斗星刃・至円
    execute if score @s 93.ActionCount matches 58 run tag @s add 93.Skill.Circle

# 最後の切り札後の行動。待機と移動斬りを5回繰り返す
    execute if score @s 93.ActionCount matches 100 run tag @s add 93.Skill.Latter.Idle
    execute if score @s 93.ActionCount matches 101 run tag @s add 93.Skill.Latter.Idle
    execute if score @s 93.ActionCount matches 102 run tag @s add 93.Skill.MoveSlash
    execute if score @s 93.ActionCount matches 103 run tag @s add 93.Skill.Latter.Idle
    execute if score @s 93.ActionCount matches 104 run tag @s add 93.Skill.MoveSlash
    execute if score @s 93.ActionCount matches 105 run tag @s add 93.Skill.Latter.Idle
    execute if score @s 93.ActionCount matches 106 run tag @s add 93.Skill.MoveSlash
    execute if score @s 93.ActionCount matches 107 run tag @s add 93.Skill.Latter.Idle
    execute if score @s 93.ActionCount matches 108 run tag @s add 93.Skill.MoveSlash
    execute if score @s 93.ActionCount matches 109 run tag @s add 93.Skill.Latter.Idle
    execute if score @s 93.ActionCount matches 110 run tag @s add 93.Skill.MoveSlash

# # ノーマル
#     execute if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0327.eclael/tick/app.1_6.select_skill_latter_normal
# # ハード・前半
#     execute if entity @s[tag=!93.Phase.HardLatter] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.1_11.select_skill_latter_hard_former
# # ハード・後半
#     execute if entity @s[tag=93.Phase.HardLatter] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.1_12.select_skill_latter_hard_latter
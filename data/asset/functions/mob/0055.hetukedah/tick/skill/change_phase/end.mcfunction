#> asset:mob/0055.hetukedah/tick/skill/change_phase/end
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/change_phase/tick

# リセット
    function asset:mob/0055.hetukedah/tick/reset

# タグ付与
    tag @s add 1J.Phase.2

# 次の行動を衝撃波攻撃にする
    execute unless data storage rota: {RuthlessMode:1b} run scoreboard players set @s 1J.MoveCount 9
    execute if data storage rota: {RuthlessMode:1b} run scoreboard players set @s 1J.MoveCount 14

# すぐにスキル発動
    scoreboard players set @s General.Mob.Tick 49

#> asset:mob/0055.hetukedah/tick/skill/change_phase/tick
#
# フェーズ2へ移行
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 開始
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/change_phase/start

# 演出
    execute if score @s General.Mob.Tick matches 1..5 run playsound entity.ravager.stunned hostile @a ~ ~ ~ 1.5 1.25
    execute if score @s General.Mob.Tick matches 1..10 run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 5 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 40 run playsound block.portal.trigger hostile @a ~ ~ ~ 2 2
    execute if score @s General.Mob.Tick matches 40 run particle enchant ~ ~4 ~ 0.1 0.1 0.1 15 150 force @a[distance=..30]
    execute if score @s General.Mob.Tick matches 40..85 run particle dust 0.5 0 0.5 2 ~ ~1.5 ~ 1 1 1 0 4 force @a[distance=..30]

# 後ろに下がる
    execute if score @s General.Mob.Tick matches 1..7 positioned ^ ^ ^-0.5 if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Mob.Tick matches 8..12 positioned ^ ^ ^-0.2 if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~

# プレイヤーを見つめる
    execute if score @s General.Mob.Tick matches 20.. facing entity @p[tag=!PlayerShouldInvulnerable,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 上昇
    execute if score @s General.Mob.Tick matches 40..55 positioned ~ ~0.08 ~ if block ~ ~2 ~ #lib:no_collision run tp @s ~ ~ ~
    execute if score @s General.Mob.Tick matches 56..60 positioned ~ ~0.04 ~ if block ~ ~2 ~ #lib:no_collision run tp @s ~ ~ ~

# 姿を変える
    execute if score @s General.Mob.Tick matches 95 run function asset:mob/0055.hetukedah/tick/skill/change_phase/change_form

# 終了
    execute if score @s General.Mob.Tick matches 120.. run function asset:mob/0055.hetukedah/tick/skill/change_phase/end

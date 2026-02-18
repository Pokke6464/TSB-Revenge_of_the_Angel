#> asset:mob/0055.hetukedah/tick/skill/flamethrower/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作+タイプ切り替え
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/windup

# 後半戦では予備動作短縮
    execute if score @s[tag=1J.Phase.2] General.Mob.Tick matches 0 run scoreboard players set @s General.Mob.Tick 25

# 予備動作その2
    execute if score @s[tag=1J.Turn.Left] General.Mob.Tick matches 1..15 run tp @s ~ ~ ~ ~5 0
    execute if score @s[tag=!1J.Turn.Left] General.Mob.Tick matches 1..15 run tp @s ~ ~ ~ ~-5 0

# こっち見る
    execute if score @s[tag=1J.Turn.Left] General.Mob.Tick matches 16..40 facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~75 0
    execute if score @s[tag=!1J.Turn.Left] General.Mob.Tick matches 16..40 facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~-75 0

# スタート
    execute if score @s General.Mob.Tick matches 40..100 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/shoot

# 逆回転の準備
    execute if predicate api:global_vars/difficulty/min/2_hard if score @s[tag=!1J.ReverseTurn,tag=1J.Skill.FlameThrower.ReverseType] General.Mob.Tick matches 80 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/prepare_reverse
    # 開始
        execute if score @s[tag=1J.PrepareReverse] General.Mob.Tick matches 100 run tag @s add 1J.ReverseTurn
        execute if score @s[tag=1J.PrepareReverse] General.Mob.Tick matches 100 run scoreboard players set @s General.Mob.Tick 50
        execute if score @s[tag=1J.PrepareReverse] General.Mob.Tick matches 50 run tag @s remove 1J.PrepareReverse

# 浮いているなら高度を下げる(この位置にある理由は上の方だと回転させるコマンドに上書きされるため)
    execute if block ~ ~-0.3 ~ #lib:no_collision run tp @s ~ ~-0.05 ~ 

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/0055.hetukedah/tick/reset

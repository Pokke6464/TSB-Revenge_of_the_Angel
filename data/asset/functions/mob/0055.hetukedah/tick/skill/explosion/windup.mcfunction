#> asset:mob/0055.hetukedah/tick/skill/explosion/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# こっち見る
    execute facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~ ~

# 演出
    particle minecraft:dust 1 0.4 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 100 force @a[distance=..30]
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# 難易度がNormalならここでreturn
    execute if predicate api:global_vars/difficulty/1_normal run return fail

# タイプの切り替え
    execute if entity @s[tag=1J.Skill.Explosion.SweepingType] run return run tag @s remove 1J.Skill.Explosion.SweepingType
    tag @s add 1J.Skill.Explosion.SweepingType

# 薙ぎ払う方向を決める
    tag @s remove 1J.ToTheLeft
    execute if predicate lib:random_pass_per/50 run tag @s add 1J.ToTheLeft

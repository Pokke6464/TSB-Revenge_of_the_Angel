#> asset:object/8002.eclael_slashbeam_reflect/tick/reflect
#
# 反射
#
# @within function asset:object/8002.eclael_slashbeam_reflect/tick/

# 召喚から一定時間経過しているなら反射せずに消滅
    execute if score @s General.Object.Tick matches 65.. run playsound block.amethyst_block.break master @a ~ ~0.5 ~ 1.5 0.75
    execute if score @s General.Object.Tick matches 65.. run particle dust 1 -0.01 1 3 ~ ~ ~ 2 2 2 0 50 force
    execute if score @s General.Object.Tick matches 65.. run return run kill @s

# 最寄りのプレイヤーへ反射
    execute facing entity @p[tag=!PlayerShouldInvulnerable] feet rotated ~ 0 run tp @s ^ ^ ^2.5 ~ ~
    # 対象にできるプレイヤーが居ない場合は反転
        execute unless entity @p[tag=!PlayerShouldInvulnerable] rotated ~180 0 run tp @s ^ ^ ^2.5 ~ ~

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1 force
    playsound minecraft:item.trident.return master @a ~ ~ ~ 3 2
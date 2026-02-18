#> asset:effect/0800.aurora_corrosion_red/tick/damage
#
# スリップダメージ
#
# @within function asset:effect/0800.aurora_corrosion_red/tick/

#> Private
# @private
    #declare score_holder $Damage
    
# 演出
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.3 2 0

# 3(N+1)ダメージ
    execute store result score $Damage Temporary run data get storage asset:context Stack
    scoreboard players add $Damage Temporary 1

# 防御貫通の魔法雷属性ダメージ
    execute store result storage api: Argument.Damage int 3 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassArmorToughness set value true
    data modify storage api: Argument.ApplyTrigger set value false
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは全ての血がオーロラに置き換わった","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは紅いオーロラによって力尽きた","with":[{"selector":"@s"}]}]'
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary
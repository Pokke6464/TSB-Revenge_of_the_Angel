#> asset:mob/0237.lunatic_mage/hurt/check_health
#
# 体力の割合を検知する
#
# @within function asset:mob/0237.lunatic_mage/hurt/

#> Priuvate
# @private
    #declare score_holder $HealthPer

# 現在体力を割合で出す
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 40%以下でTagを付与
    execute if score $HealthPer Temporary matches ..40 run tag @s add 6L.HealthLess40Per

# 15%以下で更にTagを付与
    execute if score $HealthPer Temporary matches ..15 run summon area_effect_cloud ~ ~2 ~ {CustomNameVisible:1b,Radius:0f,Duration:40,CustomName:'{"text":"Limit Break","font":"illageralt","color":"dark_purple"}'}
    execute if score $HealthPer Temporary matches ..15 as @e[limit=2] run playsound block.glass.break hostile @a ~ ~ ~ 2 0.5
    execute if score $HealthPer Temporary matches ..15 run tag @s add 6L.HealthLess15Per

# リセット
    scoreboard players reset $HealthPer Temporary

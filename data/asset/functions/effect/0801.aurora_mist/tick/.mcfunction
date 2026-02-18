#> asset:effect/0801.aurora_mist/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0801.aurora_mist/_/tick

# MPを最大MPの1.5%減らす
    function api:mp/get_max
    execute store result storage api: Argument.Fluctuation float -0.01 run data get storage api: Return.MaxMP 1.5
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation
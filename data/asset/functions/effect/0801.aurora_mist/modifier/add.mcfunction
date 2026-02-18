#> asset:effect/0801.aurora_mist/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0801.aurora_mist/given/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,801,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add

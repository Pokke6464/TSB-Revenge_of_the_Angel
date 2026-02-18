#> asset:effect/0801.aurora_mist/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0801.aurora_mist/end/
#   asset:effect/0801.aurora_mist/remove/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,801,0]
    function api:modifier/mp_regen/remove

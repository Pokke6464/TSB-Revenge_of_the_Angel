#> asset:effect/0800.aurora_corrosion_red/_/tick
#
# Effectが発動している間毎tick実行されるfunction
#
# @within tag/function asset:effect/tick

execute if data storage asset:context {id:800} run function asset:effect/0800.aurora_corrosion_red/tick/
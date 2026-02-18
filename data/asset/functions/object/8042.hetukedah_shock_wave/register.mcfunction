#> asset:object/8042.hetukedah_shock_wave/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/8042/register

# 継承(オプション)
    data modify storage asset:object Extends append value 8030
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value 

# ID (int)
    data modify storage asset:object ID set value 8042
# フィールド(オプション)
        data modify storage asset:object Field.Color set value 8388736
        data modify storage asset:object Field.Speed set value 0.75
        data modify storage asset:object Field.Tick set value 80

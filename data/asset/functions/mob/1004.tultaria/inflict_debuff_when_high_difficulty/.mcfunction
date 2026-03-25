#> asset:mob/1004.tultaria/inflict_debuff_when_high_difficulty/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1004/inflict_debuff_when_high_difficulty

# 被ダメージ上昇を復讐の残痕に置き換え
    data modify storage api: Argument.ID set value 805
    data modify storage api: Argument.Duration set value 500
    data modify storage api: Argument.StackOperation set value "add"
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 付与するものを上書きしているため、ここでは呼び出さない
    # function asset:mob/super.method

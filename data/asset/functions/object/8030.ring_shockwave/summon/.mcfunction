#> asset:object/8030.ring_shockwave/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/8030/summon

# 必須のタグを追加しておく
    data modify storage asset:context this.Tags prepend value "ObjectInit"

# 元となるEntityを召喚する
    function asset:object/8030.ring_shockwave/summon/m with storage asset:context this

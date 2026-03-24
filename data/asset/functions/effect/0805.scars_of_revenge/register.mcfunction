#> asset:effect/0805.scars_of_revenge/register
#
# Effectのデータを指定
#
# @within function asset:effect/0805.scars_of_revenge/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 7
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 805
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"復讐の残痕","color":"dark_red"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"被ダメージが上昇する"}','{"text":"時が経つまで消えることは無い。"}']
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3

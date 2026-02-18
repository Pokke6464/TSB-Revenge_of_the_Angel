#> asset:effect/0802.key_of_aurora/register
#
# Effectのデータを指定
#
# @within function asset:effect/0802.key_of_aurora/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 802
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"極","color":"#00ffe2"},{"text":"光","color":"#00e2e9"},{"text":"の","color":"#00c5f0"},{"text":"鍵","color":"#008bff"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"雷属性魔力が大きく上昇し、"}','{"text":"あらゆる攻撃に落雷による追撃が発生する。"}','{"text":"ただし、魔力が枯渇するとこのバフが解除される。"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

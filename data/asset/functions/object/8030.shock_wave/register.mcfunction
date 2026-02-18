#> asset:object/8030.shock_wave/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/8030/register

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 8030
# フィールド(オプション)
    # 色(10進数)。16777215は16進数ではffffffになるため白。
        data modify storage asset:object Field.Color set value 16777215
    # 衝撃波が広がる速度。低すぎると広がり始めの当たり判定の甘さが目立ち、高すぎると当たらない場合があるため0.5~2を推奨。
        data modify storage asset:object Field.Speed set value 1
    # 何Tick後に消滅するか。大きく広がるほど衝撃波が太くなって当たり判定が分かりにくくなるため程々に。
        data modify storage asset:object Field.Tick set value 60
    # 何Tick後から当たり判定を出すか。円形範囲攻撃+衝撃波のような場合に多段ヒットしないようにできる。
        data modify storage asset:object Field.HitboxDelay set value 0
    # 最初に何Tickスキップするか。例えば10の場合は10tick分衝撃波が広がった状態から始まる。残留時間や当たり判定の遅延も影響を受けるため注意。
        data modify storage asset:object Field.SkipTick set value 0

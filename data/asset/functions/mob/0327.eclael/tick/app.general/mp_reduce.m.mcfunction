#> asset:mob/0327.eclael/tick/app.general/mp_reduce.m
#
# MPを減らす
#
# @within function asset:mob/0327.eclael/tick/**

#> Private
# @private
    #declare score_holder $MPReduce
    #declare score_holder $Difficulty

# MPを割合で減らす
# MP減少量 = (最大MPのn% * 難易度値)

# 最大MPのn%の100倍を取得
    function api:mp/get_max
    $execute store result score $MPReduce Temporary run data get storage api: Return.MaxMP $(Percent)

# 難易度値を取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 計算して0.01倍して代入する
    execute store result storage api: Argument.Fluctuation float -0.01 run scoreboard players operation $MPReduce Temporary *= $Difficulty Temporary

# MPを減少させる
    function api:mp/fluctuation

# リセット
    scoreboard players reset $MPReduce Temporary
    scoreboard players reset $Difficulty Temporary

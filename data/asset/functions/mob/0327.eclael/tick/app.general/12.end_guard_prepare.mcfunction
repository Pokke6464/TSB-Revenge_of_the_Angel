#> asset:mob/0327.eclael/tick/app.general/12.end_guard_prepare
#
# ガード待機終了
#
# @within function asset:mob/0327.eclael/tick/**

# 耐性消去
    effect clear @s resistance

# ガード処理用タグ消去
    tag @s remove 93.Temp.PrepareGuard
    tag @s remove 93.Temp.Guard

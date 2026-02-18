#> asset:object/8030.shock_wave/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/8030/init

# merge用のデータを先に入れておく
    data modify storage asset:temp 8030.interpolation_duration set value 2
    data modify storage asset:temp 8030.start_interpolation set value 0
    data modify storage asset:context this.Merge set from storage asset:temp 8030

# データリセット
    data remove storage asset:temp 8030

# SkipTickの数値を経過時間に代入
    execute store result score @s General.Object.Tick run data get storage asset:context this.SkipTick

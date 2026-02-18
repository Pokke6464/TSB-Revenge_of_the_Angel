#> asset:object/8040.hetukedah_coldwave/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/8040/init

# ランダムな方向に向かせる
    execute if entity @s store result entity @s Rotation[0] float 1 run random value 0..359

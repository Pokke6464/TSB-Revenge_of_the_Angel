#> asset:object/2238.frestchika_holo_block/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2238/init

# ブロック設置
    execute if block ~ ~ ~ #lib:no_collision run setblock ~ ~ ~ glass

# 移動
    execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# 既に設置済みなら自身をkill(持続時間が長くなったためラグ対策)
    execute if entity @e[type=item_display,scores={ObjectID=2238,General.Object.Tick=1..},distance=..0.1] run kill @s

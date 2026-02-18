#> asset:object/8004.eclael_light_speed_attack/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @input args:
#   Rotation : [float] @ 2
# @within asset:object/8004.eclael_light_speed_attack/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit","93.Object"],Rotation:$(Rotation)}
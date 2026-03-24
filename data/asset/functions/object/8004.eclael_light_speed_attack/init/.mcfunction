#> asset:object/8004.eclael_light_speed_attack/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/8004/init

# 攻撃位置表示(レーザーを予告線として使っている)
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.04f,80f,0.04f],AppearInterpolation:5,DisappearTick:1000,DisappearInterpolation:1,LifeTime:20}
    data modify storage api: Argument.FieldOverride.Color set from storage asset:context this.Color
    execute positioned ~ ~1 ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.02f,80f,0.02f],AppearInterpolation:5,DisappearTick:1000,DisappearInterpolation:1,LifeTime:30}
    data modify storage api: Argument.FieldOverride.Color set from storage asset:context this.Color
    execute positioned ~ ~1 ~ run function api:object/summon

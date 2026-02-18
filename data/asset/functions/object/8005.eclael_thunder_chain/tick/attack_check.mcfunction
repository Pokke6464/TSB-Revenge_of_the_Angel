#> asset:object/8005.eclael_thunder_chain/tick/attack_check
#
# Objectのtick時の処理
#
# @within asset:object/8005.eclael_thunder_chain/tick/

# 一定間隔で実行
    scoreboard players operation $Temp Temporary = @s General.Object.Tick
    scoreboard players operation $Temp Temporary %= $2 Const
    execute unless score $Temp Temporary matches 0 run return run scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp Temporary

# 攻撃
    function asset:object/8005.eclael_thunder_chain/tick/attack

# 移動
    tp @s[tag=8005.Small] ^ ^ ^4
    tp @s[tag=!8005.Small] ^ ^ ^6
#> revenge_of_the_angel:toggle_ruthless_mode
#
# 手動でオンにすると自重して没になった要素などが解放されてしまう。
#
# @private
# @user

# 自重消失モードオフ
    execute if data storage rota: {RuthlessMode:1b} as @a at @s run playsound block.fire.extinguish master @s ~ ~ ~ 1 1.25
    execute if data storage rota: {RuthlessMode:1b} run tellraw @a {"text":"[!] 自重消失モードがオフになりました。","color":"aqua"}
    execute if data storage rota: {RuthlessMode:1b} run return run data modify storage rota: RuthlessMode set value 0b

# 自重消失モードオン
    execute as @a at @s run playsound entity.iron_golem.damage master @s ~ ~ ~ 1 0.75
    tellraw @a {"text":"[!] 自重消失モードがオンになりました。","color":"dark_purple"}
    data modify storage rota: RuthlessMode set value 1b

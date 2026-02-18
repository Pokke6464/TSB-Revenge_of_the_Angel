#> revenge_of_the_angel:tick
#
# 常時実行部分
#
# @within tag/function minecraft:tick

# 一度だけ実行
    execute unless data storage rota: {FirstJoin:true} run function revenge_of_the_angel:first_join
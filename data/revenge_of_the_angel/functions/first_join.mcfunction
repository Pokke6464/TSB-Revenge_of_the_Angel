#> revenge_of_the_angel:first_join
#
# データパックを導入した初回のみ実行されるfunction
#
# @within function revenge_of_the_angel:tick

# このfunctionを二度と実行されないようにする 
    data modify storage rota: FirstJoin set value true

# 1秒後にメッセージを表示
    schedule function revenge_of_the_angel:message 20t replace
    
# 追加されたスコアを生成
    function #asset:object/load
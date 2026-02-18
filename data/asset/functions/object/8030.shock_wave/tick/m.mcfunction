#> asset:object/8030.shock_wave/tick/m
#
# Objectのtick時の処理
#
# @within asset:object/8030.shock_wave/tick/

#> Temp
# @private
    #declare score_holder $Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Scaleの設定
    data modify storage asset:context this.Merge.transformation.scale set value [0f,0f,3f]
    $execute store result storage asset:context this.Merge.transformation.scale[0] float $(Speed) run scoreboard players get @s General.Object.Tick
    $execute store result storage asset:context this.Merge.transformation.scale[1] float $(Speed) run scoreboard players get @s General.Object.Tick

# 拡大する
    data modify entity @s {} merge from storage asset:context this.Merge

# 当たり判定 / 距離は-3ずらして半分にすると丁度良くなる
    scoreboard players operation $Temporary Temporary = @s General.Object.Tick
    scoreboard players remove $Temporary Temporary 3
    $execute store result storage asset:temp 8030.Distance float $(Speed) run scoreboard players get $Temporary Temporary
    execute store result storage asset:temp 8030.Distance float 0.5 run data get storage asset:temp 8030.Distance
    # データからHitboxDelayを取り出す
        execute store result score $Temporary Temporary run data get storage asset:context this.HitboxDelay
    # 経過時間がHitboxDelayを超えていたら当たり判定を出す
        execute if score @s General.Object.Tick > $Temporary Temporary if score @s General.Object.Tick matches 3.. run function asset:object/8030.shock_wave/tick/hit.m with storage asset:temp 8030

# ヒット時の処理
    execute if entity @p[tag=8030.Hit] as @a[tag=8030.Hit] at @s run function asset:object/call.m {method:"attack"}

# データからTickを取り出す
    execute store result score $Temporary Temporary run data get storage asset:context this.Tick

# 指定された時間を超えたら消滅
    execute if score $Temporary Temporary <= @s General.Object.Tick run kill @s

# 終了
    data remove storage asset:temp 8030
    scoreboard players reset $Temporary Temporary

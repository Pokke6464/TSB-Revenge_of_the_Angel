#> asset:object/8002.eclael_slashbeam_reflect/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8002/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 1
    function asset:object/8002.eclael_slashbeam_reflect/tick/model

# 移動・攻撃処理 / ヒット時に少し加速(多段ヒット防止)
    execute positioned ^ ^ ^1 run function asset:object/8002.eclael_slashbeam_reflect/tick/hit
    tp @s ^ ^ ^1.5
    execute if entity @p[tag=8002.Hit] run tp @s ^ ^ ^2.5
    execute if entity @p[tag=8002.Hit] as @a[tag=8002.Hit] at @s run function asset:object/8002.eclael_slashbeam_reflect/tick/attack

# 中央から離れる(外周のオーロラに触れるぐらい)と最寄りのプレイヤーへ反射する
    execute unless entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..28,sort=nearest,limit=1] run function asset:object/8002.eclael_slashbeam_reflect/tick/reflect

# 消滅処理
    kill @s[scores={General.Object.Tick=150..}]

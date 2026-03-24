#> asset:object/8004.eclael_light_speed_attack/tick/vfx_ground
#
# アニメーションのイベントハンドラ
#
# @within function asset:object/8004.eclael_light_speed_attack/tick/attack

# エクレールの召喚地点から離れていなければ50%でパーティクルを表示
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^4 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^8 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^12 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^16 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^20 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^24 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^28 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^32 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^36 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^40 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^44 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^48 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^52 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^56 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^60 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^64 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^68 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^72 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^76 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]
    execute if predicate lib:random_pass_per/50 positioned ^ ^ ^80 if entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..25] run particle item light_gray_wool ^ ^ ^ 0.1 0 0.1 0.2 3 force @a[distance=..64]

# 75%の確率で足音を鳴らす
    execute if predicate lib:random_pass_per/25 run return fail
    execute positioned ^ ^ ^40 run playsound block.stone.step hostile @a ~ ~ ~ 1 1
    execute positioned ^ ^ ^40 run playsound block.wood.step hostile @a ~ ~ ~ 1 0.75

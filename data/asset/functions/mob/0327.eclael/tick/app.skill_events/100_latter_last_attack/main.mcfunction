#> asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/main
#
# アニメーションのイベントハンドラ 最後の切り札
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 中心点に移動
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/animation_2
    # 移動
        execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ~ ~-2 ~ 0 0
    # 演出
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 4 run particle flash ^3 ^ ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 9 run particle flash ^-3 ^ ^ 0 0 0 0 1

# 開始
    execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/animation_0
    # 演出
        # 剣を掲げる時の音
            execute if score @s 93.AnimationTimer matches 38 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
            execute if score @s 93.AnimationTimer matches 48 run playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 3 0.75
            execute if score @s 93.AnimationTimer matches 48 run playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 3 0.85
            execute if score @s 93.AnimationTimer matches 48 run playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 3 0.95
        # 輪っかのパーティクル
            execute if score @s 93.AnimationTimer matches 48 positioned ~ ~7.5 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"-0.01 -0.01 1",PosZ:4}
            execute if score @s 93.AnimationTimer matches 49 positioned ~ ~12.5 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"-0.01 1 1",PosZ:6}
            execute if score @s 93.AnimationTimer matches 50 positioned ~ ~17.5 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"-0.01 1 -0.01",PosZ:8}
            execute if score @s 93.AnimationTimer matches 48 positioned ~ ~4 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"1 1 -0.01",PosZ:5}
            execute if score @s 93.AnimationTimer matches 49 positioned ~ ~5 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"1 1 -0.01",PosZ:7.5}
            execute if score @s 93.AnimationTimer matches 50 positioned ~ ~6 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"1 -0.01 -0.01",PosZ:10}
            execute if score @s 93.AnimationTimer matches 51 positioned ~ ~7 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"1 -0.01 -0.01",PosZ:12.5}
            execute if score @s 93.AnimationTimer matches 52 positioned ~ ~8 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"1 -0.01 1",PosZ:15}
            execute if score @s 93.AnimationTimer matches 53 positioned ~ ~9 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_circle.m {Color:"1 -0.01 1",PosZ:17.5}
        # 攻撃開始前の演出
            execute if score @s 93.AnimationTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
            execute if score @s 93.AnimationTimer matches 119 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
            execute if score @s 93.AnimationTimer matches 119 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
            execute if score @s 93.AnimationTimer matches 119 run particle flash ~ ~1 ~ 0 0 0 0 1
            execute if score @s 93.AnimationTimer matches 120 positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_jump
            execute if score @s 93.AnimationTimer matches 121 positioned ^ ^1 ^7 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_jump
            execute if score @s 93.AnimationTimer matches 122 positioned ^ ^1 ^11 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/particle_jump
    # 移動
        execute if score @s 93.AnimationTimer matches 130 run tp @s ~ ~2 ~ ~ 0

# MPを空にする霧を出す
    # Effectを付与(MPを高速で減らす)
        execute if score @s 93.AnimationTimer matches 90..2200 as @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/aurora_mist
    # 演出
        execute if score @s 93.AnimationTimer matches 80 run playsound block.beacon.power_select player @a ~ ~ ~ 3 2
        execute if score @s 93.AnimationTimer matches 80 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1.5
        execute if score @s 93.AnimationTimer matches 80 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1
        execute if score @s 93.AnimationTimer matches 80..2150 as @a[distance=..40] at @s run particle dust_color_transition 0 1 0.886 2 0 0.235 1 ~ ~2 ~ 8 2 8 0 5 normal @s

# 攻撃
    # 第五波が終わるまで雷を降らし続ける
        execute if score @s 93.AnimationTimer matches 131..1180 at @a[tag=!PlayerShouldInvulnerable,sort=random,limit=3,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/thunder_attack_check.m {Interval:20,Small:"true"}

    # 第一波 / 中央横断直線
        #execute if score @s 93.AnimationTimer matches 131 run scoreboard players set @s 93.AnimationTimer 1230
        execute if score @s 93.AnimationTimer matches 121 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:0,PosX:0,PosZ:0}
    # 第二波 / 直線2本で挟む
        execute if score @s 93.AnimationTimer matches 271 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:90,PosX:0,PosZ:18}
        execute if score @s 93.AnimationTimer matches 273 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:270,PosX:0,PosZ:-18}
    # 第三波 / 中央斜め十字
        execute if score @s 93.AnimationTimer matches 421 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:45,PosX:0,PosZ:0}
        execute if score @s 93.AnimationTimer matches 423 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:135,PosX:0,PosZ:0}
    # 第四波 / 外周ひし形
        execute if score @s 93.AnimationTimer matches 571 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:45,PosX:18,PosZ:18}
        execute if score @s 93.AnimationTimer matches 572 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:135,PosX:-18,PosZ:18}
        execute if score @s 93.AnimationTimer matches 573 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:225,PosX:-18,PosZ:-18}
        execute if score @s 93.AnimationTimer matches 574 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:315,PosX:18,PosZ:-18}
    # 第五波 / 外周四角+中央十字
        execute if score @s 93.AnimationTimer matches 850 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:270,PosX:0,PosZ:19.5}
        execute if score @s 93.AnimationTimer matches 851 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:90,PosX:0,PosZ:-19.5}
        execute if score @s 93.AnimationTimer matches 852 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:180,PosX:19.5,PosZ:0}
        execute if score @s 93.AnimationTimer matches 853 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:0,PosX:-19.5,PosZ:0}
        execute if score @s 93.AnimationTimer matches 854 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:0,PosX:0,PosZ:0}
        execute if score @s 93.AnimationTimer matches 855 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_1.m {Rotation:90,PosX:0,PosZ:0}

    # 回転
        execute if score @s 93.AnimationTimer matches 1250 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:0}
        execute if score @s 93.AnimationTimer matches 1255 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:200}
        execute if score @s 93.AnimationTimer matches 1260 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:40}
        execute if score @s 93.AnimationTimer matches 1265 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:240}
        execute if score @s 93.AnimationTimer matches 1270 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:80}
        execute if score @s 93.AnimationTimer matches 1275 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:280}
        execute if score @s 93.AnimationTimer matches 1280 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:120}
        execute if score @s 93.AnimationTimer matches 1285 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:320}
        execute if score @s 93.AnimationTimer matches 1290 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_2.m {Rotation:160}

    # 雷
        execute if score @s 93.AnimationTimer matches 1430 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1480 positioned ~4 ~ ~4 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1480 positioned ~4 ~ ~-4 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1480 positioned ~-4 ~ ~4 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1480 positioned ~-4 ~ ~-4 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~9.5 ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~-9.5 ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~ ~ ~9.5 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~ ~ ~-9.5 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~9.5 ~ ~9.5 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~9.5 ~ ~-9.5 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~-9.5 ~ ~9.5 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1530 positioned ~-9.5 ~ ~-9.5 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}

    # やけくそ連続雷
        execute if score @s 93.AnimationTimer matches 1580 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1600 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1620 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1640 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1650 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1660 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1670 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1680 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1685 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1690 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1695 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1700..1850 at @a[tag=!PlayerShouldInvulnerable,sort=random,limit=2,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/thunder_attack_check.m {Interval:2,Small:"false"}
        execute if score @s 93.AnimationTimer matches 1855 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1860 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1870 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1880 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1900 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"false"}
        execute if score @s 93.AnimationTimer matches 1925 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1955 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 1990 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 2030 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}
        execute if score @s 93.AnimationTimer matches 2100 at @a[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/attack_0.m {Small:"true"}

# 霧の効果終了
    execute if score @s 93.AnimationTimer matches 2200 run data modify storage api: Argument.ID set value 801
    execute if score @s 93.AnimationTimer matches 2200 as @a run function api:entity/mob/effect/remove/from_id
    execute if score @s 93.AnimationTimer matches 2200 run function api:entity/mob/effect/reset

# 無敵解除(無敵化はHPが1割切った時に付与済み)
    execute if score @s 93.AnimationTimer matches 2231 run function asset:mob/0327.eclael/tick/app.general/invulnerable/end

# 攻撃終了
    execute if score @s 93.AnimationTimer matches 2230 run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/animation_1
    # 移動
        execute if score @s 93.AnimationTimer matches 2225 run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 2230 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 2230 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 2230 run particle flash ~ ~3 ~ 0 0 0 0 1

# 終了
    execute if score @s 93.AnimationTimer matches 2255.. run function asset:mob/0327.eclael/tick/app.skill_events/100_latter_last_attack/end

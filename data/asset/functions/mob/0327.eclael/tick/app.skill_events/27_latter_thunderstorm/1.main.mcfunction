#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main
#
# アニメーションのイベントハンドラ 後半・雷雨
# 天候を雷雨に変更し、天候を固定する。
# 一応雷にダメージ判定はあるが、ほぼ演出。
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 無敵
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.general/invulnerable/start

# 中心点に移動
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/3_0.play_animation_0
    # 移動
        execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..40] feet run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 4 run particle flash ^3 ^ ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 9 run particle flash ^-3 ^ ^ 0 0 0 0 1

# animated javaアニメーション再生(一時停止とかで無理やり演出に合わせる)
    execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/3_1.play_animation_1.m {to_frame:1}
    # 一時停止
        execute if score @s 93.AnimationTimer matches 48 as @e[type=item_display,tag=93.ModelRoot.Target,distance=..80,sort=nearest,limit=1] run function animated_java:eclael/animations/pause_all
    # 途中から再生
        execute if score @s 93.AnimationTimer matches 68 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/3_1.play_animation_1.m {to_frame:15}

# 演出
    execute if score @s 93.AnimationTimer matches 34 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 93 as @e[limit=2] run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 48 run playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 113 run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/4.effect
    # 天鍵杖を召喚
        execute if score @s 93.AnimationTimer matches 48 run data modify storage api: Argument.ID set value 8007
        execute if score @s 93.AnimationTimer matches 48 positioned ~ ~2.75 ~ run function api:object/summon

# 極光の鍵を付与(このエフェクト自体には効果無し)
    execute if score @s 93.AnimationTimer matches 113 run data modify storage api: Argument.ID set value 802
    execute if score @s 93.AnimationTimer matches 113 run function api:entity/mob/effect/give
    execute if score @s 93.AnimationTimer matches 113 run function api:entity/mob/effect/reset

# プレイヤーが天鍵杖を使えなくする
    execute if score @s 93.AnimationTimer matches 113 run tag @s add 93.WeatherLock

# 無敵解除
    execute if score @s 93.AnimationTimer matches 148 run function asset:mob/0327.eclael/tick/app.general/invulnerable/end

# 終了
    execute if score @s 93.AnimationTimer matches 148.. run function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/2.end

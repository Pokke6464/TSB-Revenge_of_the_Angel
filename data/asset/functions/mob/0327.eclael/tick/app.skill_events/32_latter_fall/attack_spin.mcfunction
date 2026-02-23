#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_spin
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute positioned ~ ~1 ~ rotated ~60 ~5 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/5.2.particle_slash_0
    execute positioned ~ ~1.5 ~ rotated ~-45 ~7 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/5.4.particle_slash_2
    execute positioned ~ ~0.7 ~ rotated ~120 ~-5 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/5.5.particle_slash_3

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..12.5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Fall1
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
# MPを減少させる
    execute as @a[tag=93.Temp.AttackTarget] run function asset:mob/0327.eclael/tick/app.general/mp_reduce.m {Percent:3.33}
# リセット
    function api:damage/reset
    tag @a remove 93.Temp.AttackTarget

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20502,20503,20504,20505],Scale:[16f,1f,14f],Transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^1.3 ^2 run function api:object/summon

    # data modify storage api: Argument.ID set value 2001
    # data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20502,20503,20504,20505],Scale:[8f,1f,6f],Transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    # execute rotated ~120 ~ positioned ^ ^2 ^2 run function api:object/summon

    # data modify storage api: Argument.ID set value 2001
    # data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20502,20503,20504,20505],Scale:[8f,1f,6f],Transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    # execute rotated ~240 ~ positioned ^ ^2 ^2 run function api:object/summon

# 強化後半戦ではないならここでreturn
    execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] run return 0

# 円形に雷を降らせる / facingがある理由は確実にプレイヤーに当てるため
    # 回転斬り範囲外のプレイヤーを狙う。居ない場合は最寄りのプレイヤーを狙う
        tag @p[tag=!PlayerShouldInvulnerable,distance=12.5..80] add 93.Temp.AttackTarget
        execute unless entity @p[tag=93.Temp.AttackTarget] run tag @p[tag=!PlayerShouldInvulnerable,distance=..80] add 93.Temp.AttackTarget
    # 攻撃
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~ 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~45 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~90 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~135 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~180 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~225 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~270 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
        execute facing entity @p[tag=93.Temp.AttackTarget] feet rotated ~315 0 positioned ^ ^ ^13 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
    # 終了
        tag @a remove 93.Temp.AttackTarget

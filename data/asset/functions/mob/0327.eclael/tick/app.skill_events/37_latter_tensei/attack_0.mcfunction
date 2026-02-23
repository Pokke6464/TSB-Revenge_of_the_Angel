#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute as @e[limit=3] run playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.5
    particle explosion ~ ~ ~ 3 0.5 3 0 30
    particle dust_color_transition 0 1 0.886 3 0 0.235 1 ~ ~ ~ 2.5 1 2.5 0 50

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.TenseiSpear
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
# MPを減少させる
    execute as @a[tag=93.Temp.AttackTarget] run function asset:mob/0327.eclael/tick/app.general/mp_reduce.m {Percent:2}
# リセット
    function api:damage/reset
    tag @a remove 93.Temp.AttackTarget

# 最寄りのプレイヤーの位置に攻撃地点を設定
    execute at @p[tag=!PlayerShouldInvulnerable,distance=..80] run summon area_effect_cloud ^ ^ ^ {Duration:30,Tags:["93.Temp.AttackPosition"]}

# 強化後半戦ではないならここでreturn
    execute unless entity @s[tag=93.Phase.Latter.Extra,tag=!93.LowHP] run return 0

# 円形に雷を降らせる / facingがある理由は確実にプレイヤーに当てるため
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~ 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~45 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~90 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~135 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~180 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~225 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~270 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"false"}
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] feet rotated ~315 0 positioned ^ ^ ^7 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack.m {Delay:0,Silent:"true"}

#> asset:object/2212.eclael_upper_shot/tick/attack
#
# Objectのtick時の処理
#
# @within function
#   asset:object/2212.eclael_upper_shot/tick/
#   asset:object/8002.eclael_upper_shot/tick/

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 4
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 30
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# Effect(極光侵蝕・紅)の付与
    # 難易度値を取得し、2以上なら1減らす
        function api:global_vars/get_difficulty
        execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
        execute if score $Difficulty Temporary matches 2.. run scoreboard players remove $Difficulty Temporary 1
    # Effectを付与
        data modify storage api: Argument.ID set value 800
        execute store result storage api: Argument.Stack int 1 run scoreboard players get $Difficulty Temporary
        data modify storage api: Argument.Duration set value 300
        execute as @a[tag=DXYZ] run function api:entity/mob/effect/give
    # リセット
        function api:entity/mob/effect/reset
        scoreboard players reset $Difficulty Temporary

# 演出
    execute at @a[tag=DXYZ] rotated ~ -90 run function asset:object/2212.eclael_upper_shot/tick/effect_hit

# 終了
    tag @a[tag=DXYZ] remove DXYZ
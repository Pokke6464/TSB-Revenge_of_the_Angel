#> asset:object/2189.eclael_arrow/tick/attack
#
# 攻撃判定
#
# @within function asset:object/2189.eclael_arrow/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2189.Hit] at @s run function api:damage/
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
        execute as @a[tag=2189.Hit] run function api:entity/mob/effect/give
    # リセット
        function api:entity/mob/effect/reset
        scoreboard players reset $Difficulty Temporary

# 終了
    tag @a remove 2189.Hit
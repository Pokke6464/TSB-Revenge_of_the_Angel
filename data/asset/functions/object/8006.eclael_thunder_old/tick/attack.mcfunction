#> asset:object/8006.eclael_thunder_old/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/8006.eclael_thunder_old/tick/

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $Difficulty

# 演出
    execute unless data storage asset:context this{Silent:true} run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1
    particle flash ~ ~ ~ 0 0 0 0 3

# ランダムな雷を表示
    execute store result score $Random Temporary run random value 0..5
    execute if score $Random Temporary matches 0 rotated ~ 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.1.1.particle_green_0
    execute if score $Random Temporary matches 1 rotated ~120 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.2.1.particle_cyan_0
    execute if score $Random Temporary matches 2 rotated ~240 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.1.particle_blue_0
    execute if score $Random Temporary matches 3 rotated ~60 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.1.2.particle_green_1
    execute if score $Random Temporary matches 4 rotated ~180 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.2.2.particle_cyan_1
    execute if score $Random Temporary matches 5 rotated ~300 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.3.2.particle_blue_1
# リセット
    scoreboard players reset $Random Temporary

# ダメージ範囲を円柱にする / 判定の位置を下げないと接地してるプレイヤーに当たらなかった
    data modify storage lib: Argument.BoundingCylinder.Radius set value 2.0d
    data modify storage lib: Argument.BoundingCylinder.Height set value 8.0d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..9]"
    execute positioned ~ ~-0.2 ~ run function lib:bounding_cylinder/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier_manual
    execute as @a[tag=BoundingCylinder,distance=..9] run function api:damage/
    function api:damage/reset

# Effect(極光侵蝕)の付与
    # 難易度値を取得し1減らす
        function api:global_vars/get_difficulty
        execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
        scoreboard players remove $Difficulty Temporary 1
    # Effectを付与(効果時間は通常の落雷(ID:2206)の半分)
        data modify storage api: Argument.ID set value 605
        execute store result storage api: Argument.Stack int 1 run scoreboard players get $Difficulty Temporary
        data modify storage api: Argument.Duration set value 100
        execute as @a[tag=BoundingCylinder,distance=..9] run function api:entity/mob/effect/give
    # リセット
        function api:entity/mob/effect/reset
        scoreboard players reset $Difficulty Temporary

# 終了
    tag @a[tag=BoundingCylinder] remove BoundingCylinder
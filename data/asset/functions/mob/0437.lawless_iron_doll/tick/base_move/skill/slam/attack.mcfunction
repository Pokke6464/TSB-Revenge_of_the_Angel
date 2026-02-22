#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/attack
#
# 攻撃+衝撃波
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick

# マーカーを削除
    kill @e[type=marker,tag=C5.Marker.SlamPoint,distance=..256,limit=1]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.7

# ダメージ判定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slam
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# 衝撃波
    data modify storage api: Argument.ID set value 8050
    data modify storage api: Argument.FieldOverride.SkipTick set value 3
    data modify storage api: Argument.FieldOverride.HitboxDelay set value 4
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.SlamShockWave
    # 広がる速度の設定。後半戦で速度が上昇するが、Blesslessだと50%で低速になる
        execute if score @s C5.Phase matches 1 run data modify storage api: Argument.FieldOverride.Speed set value 1
        execute if score @s C5.Phase matches 2.. run data modify storage api: Argument.FieldOverride.Speed set value 1.5
        execute if score @s C5.Phase matches 2.. if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.Speed set value 0.75
    # 召喚
        execute positioned ~ ~0.1 ~ run function api:object/summon

# ブロック破壊
    execute if predicate api:area/is_breakable positioned ~ ~ ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break
    execute if predicate api:area/is_breakable positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break
    execute if predicate api:area/is_breakable positioned ~ ~2 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break
    execute if predicate api:area/is_breakable positioned ~ ~3 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break

# パーティクル
    particle large_smoke ~ ~0.1 ~ 2.5 0 2.5 0.1 30
    particle explosion ~ ~0.1 ~ 2.5 0.5 2.5 1 15

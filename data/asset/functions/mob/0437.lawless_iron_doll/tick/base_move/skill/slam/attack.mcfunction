#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/attack
#
# 攻撃
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/tick

# マーカーを削除
    kill @e[type=marker,tag=C5.Marker.SlamPoint,distance=..256,limit=1]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.7

# パーティクル
    particle large_smoke ~ ~0.1 ~ 2.5 0 2.5 0.1 30
    particle explosion ~ ~0.1 ~ 2.5 0.5 2.5 1 15

# ダメージ判定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slam
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# ブロック破壊
    execute if predicate api:area/is_breakable positioned ~ ~ ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break
    execute if predicate api:area/is_breakable positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break
    execute if predicate api:area/is_breakable positioned ~ ~2 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break
    execute if predicate api:area/is_breakable positioned ~ ~3 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/break

# 衝撃波
    execute if score @s C5.Phase matches 1 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/shock_wave.m {Speed:1, Tick:60, HitboxDelay:4, SkipTick:3}
    # 後半戦で速度が上昇するが、Blesslessだと50%で低速になる
        execute if score @s C5.Phase matches 2.. if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run return run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/shock_wave.m {Speed:0.75, Tick:60, HitboxDelay:5, SkipTick:4}
        execute if score @s C5.Phase matches 2.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/slam/shock_wave.m {Speed:1.5, Tick:40, HitboxDelay:3, SkipTick:2}

#> asset:object/8051.lawless_shockwave_big/tick/end
#
#
#
# @within function asset:object/8051.lawless_shockwave_big/tick/

# 消滅。難易度がHard以下の場合は以降のコマンドは実行されない
    execute if predicate api:global_vars/difficulty/max/2_hard run return run kill @s
    kill @s

# パーティクル
    particle large_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.4 25 force @a[distance=..32]
    particle dust 0.5 0.5 0.5 4 ~ ~0.5 ~ 2 2 2 0 30 force @a[distance=..32]
    particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..32]

# サウンド
    playsound entity.breeze.wind_burst hostile @a ~ ~ ~ 2 0.5

# ダメージ
    function asset:object/8051.lawless_shockwave_big/tick/attack

# 衝撃波を召喚
    data modify storage api: Argument.ID set value 8050
    data modify storage api: Argument.FieldOverride.Speed set value 0.75
    data modify storage api: Argument.FieldOverride.Tick set value 30
    data modify storage api: Argument.FieldOverride.HitboxDelay set value 5
    data modify storage api: Argument.FieldOverride.SkipTick set value 4
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute positioned ~ ~0.1 ~ run function api:object/summon

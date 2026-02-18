#> asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_shoot
#
# 超でかビーム発射
#
# @within function asset:mob/0055.hetukedah/tick/skill/otete_beam/tick_hard

# 演出
    playsound tsb_sounds:blaster1 hostile @a ~ ~ ~ 2.5 1
    playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 2.5 1.5
    playsound entity.wither.hurt hostile @a ~ ~ ~ 2.5 1.25
    playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 2.5 1.25
    execute positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_ring_particle

# レーザーを表示
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:13421568,Scale:[3f,39f,3f],AppearInterpolation:1,DisappearTick:5,DisappearInterpolation:10,LifeTime:60}
    execute positioned ~ ~0.5 ~ positioned ^ ^ ^0.5 run function api:object/summon

# 再帰スタート
    function asset:mob/0055.hetukedah/tick/skill/otete_beam/hyper_beam/

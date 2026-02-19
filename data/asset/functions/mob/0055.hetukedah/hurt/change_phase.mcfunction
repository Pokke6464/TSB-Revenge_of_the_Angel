#> asset:mob/0055.hetukedah/hurt/change_phase
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0055.hetukedah/hurt/

# 体力検知
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# HPが半分を切っていなければここで終了
    execute unless score $HealthPer Temporary matches ..50 run return run scoreboard players reset $HealthPer Temporary



# 行動キャンセル
    function asset:mob/0055.hetukedah/tick/reset

# エフェクト削除
    effect clear @s speed

# タグ付与
    tag @s add 1J.HealthIsBelowHalf

# フェーズ移行演出を再生
    tag @s add 1J.InAction
    tag @s add 1J.Skill.ChangePhase

# Tickを-1にする。これをしないとフェーズ移行演出がTick1から処理が始まってTick0が検知できない
    scoreboard players set @s General.Mob.Tick -1

# 終了
    scoreboard players reset $HealthPer Temporary

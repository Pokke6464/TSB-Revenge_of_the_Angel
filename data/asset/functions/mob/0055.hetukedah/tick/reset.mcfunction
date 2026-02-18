#> asset:mob/0055.hetukedah/tick/reset
#
# リセット処理
#
# @within function asset:mob/0055.hetukedah/tick/skill/**

# タグリセット
    tag @s remove 1J.Skill.OteteBeam
    tag @s remove 1J.Skill.Explosion
    tag @s remove 1J.Skill.Summon
    tag @s remove 1J.Skill.Charge
    tag @s remove 1J.Skill.FlameThrower
    tag @s remove 1J.Skill.ColdWave
    tag @s remove 1J.Skill.ShockWave
    tag @s remove 1J.Skill.TiaLiat-kudan
    tag @s remove 1J.Skill.ChangePhase

    tag @s remove 1J.InAction
    tag @s remove 1J.Turn.Left
    tag @s remove 1J.PrepareReverse
    tag @s remove 1J.ReverseTurn

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
    scoreboard players reset @s 1J.LoopCount

# 動作カウントリセット
    scoreboard players reset @s[tag=!1J.Phase.2,scores={1J.MoveCount=5..}] 1J.MoveCount
    execute unless data storage rota: {RuthlessMode:1b} run scoreboard players reset @s[tag=1J.Phase.2,scores={1J.MoveCount=10..}] 1J.MoveCount
    execute if data storage rota: {RuthlessMode:1b} run scoreboard players reset @s[tag=1J.Phase.2,scores={1J.MoveCount=15..}] 1J.MoveCount

# NoAI解除
    data merge entity @s {NoAI:0b}

# 無敵化解除
    data merge entity @s {Invulnerable:0b}
    tag @s remove Uninterferable

# 後半戦のスキル未使用時に25%の確率で距離を取らず攻撃的になる(スキル選択時に解除)
    execute if entity @s[tag=!1J.Phase.2] run return fail
    execute if predicate lib:random_pass_per/75 run return fail

    tag @s add 1J.AttackMode
    effect give @s speed 3 2 true
    playsound entity.ravager.roar hostile @a ~ ~ ~ 1.5 2
    particle firework ~ ~1.5 ~ 0.1 0.1 0.1 0.3 40 force @a[distance=..30]

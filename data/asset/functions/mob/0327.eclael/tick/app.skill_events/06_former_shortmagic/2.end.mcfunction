#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/2.end
#
# アニメーションのイベントハンドラ 前半・魔法 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Former.ShortMagic

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1

# ターゲット解放
    scoreboard players reset @s 93.TargetUserId
    tag @a remove 93.Temp.Target
    
# タイプを切り替える
    execute if entity @s[tag=93.Skill.Former.ShortMagic.ChainType] run return run tag @s remove 93.Skill.Former.ShortMagic.ChainType
    tag @s add 93.Skill.Former.ShortMagic.ChainType

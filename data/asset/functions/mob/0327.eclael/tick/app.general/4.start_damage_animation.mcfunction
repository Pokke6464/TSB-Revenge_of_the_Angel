#> asset:mob/0327.eclael/tick/app.general/4.start_damage_animation
#
# 汎用処理 怯みアニメーションを再生開始する
#
# @within function asset:mob/0327.eclael/hurt/start_last_attack

# アニメーション再生停止
    function asset:mob/0327.eclael/tick/app.general/3.stop_all_animations

# タグを付与
    tag @s add 93.LowHP

# 無敵化
    function asset:mob/0327.eclael/tick/app.general/invulnerable/start

# ガードを終了
    function asset:mob/0327.eclael/tick/app.general/12.end_guard_prepare

# 怯みアニメーション再生開始(アニメーション終了後に最後の切り札を発動)
    tag @s add 93.Skill.Latter.Damage
    scoreboard players set @s 93.AnimationTimer 0

# 最後の切り札終了後、待機と移動斬りを5回繰り返す
    scoreboard players set @s 93.ActionCount 99

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.5
    playsound entity.item.break hostile @a ~ ~ ~ 1 0.6

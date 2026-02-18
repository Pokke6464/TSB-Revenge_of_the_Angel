#> asset:object/8007.eclael_weather_lock_cane/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8007/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
    tp @s ~ ~ ~ ~5 ~

# 演出
    execute if score @s General.Object.Tick matches 1 run particle enchant ~ ~1.2 ~ 0 0 0 20 200
    execute if score @s General.Object.Tick matches 5 run playsound block.portal.trigger hostile @a ~ ~ ~ 2 2
    execute if score @s General.Object.Tick matches 45 run data merge entity @s {Glowing:1b}
    execute if score @s General.Object.Tick matches 45.. run particle dust_color_transition 0 1 0.886 1 0 0.235 1 ~ ~ ~ 0.4 0.4 0.4 0 2
    execute if score @s General.Object.Tick matches 66 run particle firework ~ ~ ~ 0 0 0 0.2 30
    execute if score @s General.Object.Tick matches 66 as @e[limit=3] run playsound ui.button.click player @a ~ ~ ~ 1000000 1 1
    execute if score @s General.Object.Tick matches 66 run tellraw @a [{"text":"侵","color":"#00ffe2"},{"text":"蝕","color":"#00f1e6"},{"text":"さ","color":"#00e2e9"},{"text":"れ","color":"#00d4ed"},{"text":"た","color":"#00c5f1"},{"text":"天","color":"#00b7f4"},{"text":"鍵","color":"#00a8f8"},{"text":"杖","color":"#008bff"},{"text":"の効果で天候が固定された！","color":"white"}]

# プレイヤーの天鍵杖の効果が残っている場合は強制解除
    execute if data storage asset:temp BZ if score @s General.Object.Tick matches 66 run schedule clear asset:artifact/0431.weather_lock_cane/trigger/end
    execute if data storage asset:temp BZ if score @s General.Object.Tick matches 66 run function asset:artifact/0431.weather_lock_cane/trigger/end
    
# 移動
    tp @s[scores={General.Object.Tick=45..55}] ~ ~0.15 ~

# 消滅
    execute if score @s General.Object.Tick matches 90 run playsound entity.item.break hostile @a ~ ~ ~ 1 1
    execute if score @s General.Object.Tick matches 90 run particle item carrot_on_a_stick{CustomModelData:431} ~ ~0.1 ~ 0.1 0.1 0.1 0.2 15
    execute if score @s General.Object.Tick matches 90.. on passengers run kill @s
    execute if score @s General.Object.Tick matches 90.. run kill @s

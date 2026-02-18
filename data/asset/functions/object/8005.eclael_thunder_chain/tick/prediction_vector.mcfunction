#> asset:object/8005.eclael_thunder_chain/tick/prediction_vector
#
# Objectのtick時の処理
#
# @within asset:object/8005.eclael_thunder_chain/tick/

# 攻撃方向予告用のテキストディスプレイを召喚する
    execute unless entity @s[tag=8005.Small] run summon text_display ~-0.5 ~-0.5 ~-0.5 {Tags:["8005.Text"],text:'{"text":">>","color":"#00FFA2","bold":true}',text_opacity:255,background:16711680,alignment:"right",line_width:210,transformation:[0.0000f,17.0000f,0.0000f,-2.8125f,0.0000f,-0.0000f,1.0000f,-0.3f,6.5000f,-0.0000f,-0.0000f,6f,0.0000f,0.0000f,0.0000f,1.0000f]}
    execute if entity @s[tag=8005.Small] run summon text_display ~-0.5 ~-0.5 ~-0.5 {Tags:["8005.Text"],text:'{"text":">>","color":"#00FFA2","bold":true}',text_opacity:255,background:16711680,alignment:"right",line_width:210,transformation:[0.0000f,17.0000f,0.0000f,-2.8125f,0.0000f,-0.0000f,1.0000f,-0.3f,6.5000f,-0.0000f,-0.0000f,4.4f,0.0000f,0.0000f,0.0000f,1.0000f]}
    ride @e[type=text_display,tag=8005.Text,tag=!8005.Text.Ride,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 8005.Text.Ride
    execute on passengers run tp @s ~ ~ ~ ~ 0
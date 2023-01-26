scoreboard objectives add deaths deathCount
# death count
scoreboard objectives add kills playerKillCount
# kill count
scoreboard objectives add dead dummy
# for when player has 0 health
scoreboard objectives add hearts dummy
scoreboard objectives add clicked_heart minecraft.used:carrot_on_a_stick
scoreboard objectives add health dummy
scoreboard objectives add two dummy
scoreboard objectives add withdraw_heart trigger
scoreboard objectives add health2 health
scoreboard objectives add health3 dummy
scoreboard objectives add one dummy
scoreboard objectives add hearts2 dummy
scoreboard objectives add msg dummy
scoreboard objectives add hearts3 dummy
scoreboard objectives add 1heart dummy

tellraw @p {"text": "Succesfully loaded lifesteal datapack!","color": "gold"}
tellraw @p {"text": "Click me to uninstall lifesteal datapack","color": "red","underlined": true,"clickEvent": {"action": "run_command","value": "/function lifesteal:uninstall"}}
tellraw @p {"text": "OPs, click me or do /function lifesteal:op_give_heart to get a heart","color": "gold","underlined": true,"clickEvent": {"action": "run_command","value": "/function lifesteal:op_give_heart"}}
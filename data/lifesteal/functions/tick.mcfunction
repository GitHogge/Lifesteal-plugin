scoreboard objectives add two dummy
scoreboard objectives add one dummy
scoreboard players enable @a withdraw_heart
scoreboard players set @a one 1
scoreboard players set @a two 2
scoreboard players operation @a hearts2 = @a hearts
scoreboard players operation @a hearts2 -= @a one

execute as @a[scores={withdraw_heart=1..},gamemode=survival] at @s run function lifesteal:withdraw
execute as @a[scores={deaths=1..}] at @s run function lifesteal:death
execute as @a[scores={kills=1..}] at @s run function lifesteal:kill
execute as @a[scores={dead=1},tag=!Admin] at @s run gamemode spectator @s

execute as @e[tag=respawned] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=respawned] at @s run tag @s remove respawned

execute as @a[gamemode=spectator] at @s if entity @e[distance=..3,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6190001}}}] at @s run function lifesteal:revive

execute as @a unless entity @s[scores={dead=..0}] unless entity @s[scores={dead=0..}] at @s run scoreboard players set @s dead 0
execute as @a if entity @s[scores={hearts=0}] at @s run scoreboard players set @s hearts 20
execute as @a unless entity @s[scores={health=..0}] unless entity @s[scores={health=0..}] at @s run scoreboard players set @s health 20
execute as @a unless entity @s[scores={hearts=..0}] unless entity @s[scores={hearts=0..}] at @s run scoreboard players set @s hearts 20
execute as @a[scores={clicked_heart=1..},nbt={SelectedItem:{tag:{CustomModelData:6190001}}}] at @s run function lifesteal:used_heart

execute as @a[scores={hearts=2}] at @s run attribute @s generic.max_health base set 2
execute as @a[scores={hearts=4}] at @s run attribute @s generic.max_health base set 4
execute as @a[scores={hearts=6}] at @s run attribute @s generic.max_health base set 6
execute as @a[scores={hearts=8}] at @s run attribute @s generic.max_health base set 8
execute as @a[scores={hearts=10}] at @s run attribute @s generic.max_health base set 10
execute as @a[scores={hearts=12}] at @s run attribute @s generic.max_health base set 12
execute as @a[scores={hearts=14}] at @s run attribute @s generic.max_health base set 14
execute as @a[scores={hearts=16}] at @s run attribute @s generic.max_health base set 16
execute as @a[scores={hearts=18}] at @s run attribute @s generic.max_health base set 18
execute as @a[scores={hearts=20}] at @s run attribute @s generic.max_health base set 20
execute as @a[scores={hearts=22}] at @s run attribute @s generic.max_health base set 22
execute as @a[scores={hearts=24}] at @s run attribute @s generic.max_health base set 24
execute as @a[scores={hearts=26}] at @s run attribute @s generic.max_health base set 26
execute as @a[scores={hearts=28}] at @s run attribute @s generic.max_health base set 28
execute as @a[scores={hearts=30}] at @s run attribute @s generic.max_health base set 30
execute as @a[scores={hearts=32}] at @s run attribute @s generic.max_health base set 32
execute as @a[scores={hearts=34}] at @s run attribute @s generic.max_health base set 34
execute as @a[scores={hearts=36}] at @s run attribute @s generic.max_health base set 36
execute as @a[scores={hearts=38}] at @s run attribute @s generic.max_health base set 38
execute as @a[scores={hearts=40}] at @s run attribute @s generic.max_health base set 40

execute as @a[scores={hearts=40}] at @s run scoreboard players set @s msg 1
execute as @a[scores={hearts=2..38}] at @s run scoreboard players set @s msg 0
execute as @a[scores={hearts=4..}] at @s run scoreboard players set @s 1heart 0
execute as @a[scores={hearts=2}] at @s run scoreboard players set @s 1heart 1
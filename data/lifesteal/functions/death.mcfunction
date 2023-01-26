tag @s[type=player] add respawned
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:2.0d}]}] at @s run scoreboard players set @s dead 1
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:4.0d}]}] at @s run scoreboard players set @s hearts 2
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:6.0d}]}] at @s run scoreboard players set @s hearts 4
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:8.0d}]}] at @s run scoreboard players set @s hearts 6
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:10.0d}]}] at @s run scoreboard players set @s hearts 8
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:12.0d}]}] at @s run scoreboard players set @s hearts 10
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:14.0d}]}] at @s run scoreboard players set @s hearts 12
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:16.0d}]}] at @s run scoreboard players set @s hearts 14
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:18.0d}]}] at @s run scoreboard players set @s hearts 16
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0d}]}] at @s run scoreboard players set @s hearts 18
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:22.0d}]}] at @s run scoreboard players set @s hearts 20
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:24.0d}]}] at @s run scoreboard players set @s hearts 22
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:26.0d}]}] at @s run scoreboard players set @s hearts 24
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:28.0d}]}] at @s run scoreboard players set @s hearts 26
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d}]}] at @s run scoreboard players set @s hearts 28
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:32.0d}]}] at @s run scoreboard players set @s hearts 30
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:34.0d}]}] at @s run scoreboard players set @s hearts 32
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:36.0d}]}] at @s run scoreboard players set @s hearts 34
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:38.0d}]}] at @s run scoreboard players set @s hearts 36
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:40.0d}]}] at @s run scoreboard players set @s hearts 38

scoreboard players set @s deaths 0

execute as @a[scores={hearts=4..40}] at @s run effect give @s poison 1 1 false

execute as @s at @s run scoreboard players operation @s health = @s hearts
execute as @s at @s run scoreboard players operation @s health /= @s two

execute as @s[scores={dead=1}] at @s run tellraw @s {"text": "Your are now dead.","color": "dark_red"}

execute as @s[scores={hearts=4..}] at @s run tellraw @s {"text": "Your health has now decreased to","color": "dark_green","extra": [{"text": " "},{"score":{"name":"@s","objective":"health"},"color": "red"},{"text": " hearts!","color": "dark_green"}]}
execute as @s[scores={hearts=..2,dead=0}] at @s run tellraw @s {"text": "Your health has now decreased to","color": "dark_green","extra": [{"text": " "},{"score":{"name":"@s","objective":"health"},"color": "red"},{"text": " heart!","color": "dark_green"}]}
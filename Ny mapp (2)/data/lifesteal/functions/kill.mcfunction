execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:40.0d}]}] at @s run give @s carrot_on_a_stick{display:{Name:'{"text":"Heart","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"OP Heart Item. Right-click to get an extra heart!","color":"dark_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},CustomModelData:6190001} 1
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:38.0d}]}] at @s run scoreboard players set @s hearts 40
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:36.0d}]}] at @s run scoreboard players set @s hearts 38
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:34.0d}]}] at @s run scoreboard players set @s hearts 36
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:32.0d}]}] at @s run scoreboard players set @s hearts 34
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d}]}] at @s run scoreboard players set @s hearts 32
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:28.0d}]}] at @s run scoreboard players set @s hearts 30
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:26.0d}]}] at @s run scoreboard players set @s hearts 28
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:24.0d}]}] at @s run scoreboard players set @s hearts 26
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:22.0d}]}] at @s run scoreboard players set @s hearts 24
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:20.0d}]}] at @s run scoreboard players set @s hearts 22
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:18.0d}]}] at @s run scoreboard players set @s hearts 20
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:16.0d}]}] at @s run scoreboard players set @s hearts 18
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:14.0d}]}] at @s run scoreboard players set @s hearts 16
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:12.0d}]}] at @s run scoreboard players set @s hearts 14
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:10.0d}]}] at @s run scoreboard players set @s hearts 12
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:8.0d}]}] at @s run scoreboard players set @s hearts 10
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:6.0d}]}] at @s run scoreboard players set @s hearts 8
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:4.0d}]}] at @s run scoreboard players set @s hearts 6
execute as @s[nbt={Attributes:[{Name:"minecraft:generic.max_health",Base:2.0d}]}] at @s run scoreboard players set @s hearts 4

scoreboard players set @s kills 0

execute as @s at @s run scoreboard players operation @s health = @s hearts
execute as @s at @s run scoreboard players operation @s health /= @s two

execute as @s[scores={hearts=..2}] at @s run tellraw @s {"text": "Your health has now increased to","color": "dark_green","extra": [{"text": " "},{"score":{"name":"@s","objective":"health"},"color": "red"},{"text": " heart!","color": "dark_green"}]}
execute as @s[scores={hearts=4..38}] at @s run tellraw @s {"text": "Your health has now increased to","color": "dark_green","extra": [{"text": " "},{"score":{"name":"@s","objective":"health"},"color": "red"},{"text": " hearts!","color": "dark_green"}]}
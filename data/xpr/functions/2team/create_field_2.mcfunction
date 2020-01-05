execute as @s[tag=admin] run fill -1004 68 4 -996 76 -4 air
execute as @s[tag=admin] run fill -1003 67 3 -997 60 -3 stone
execute as @s[tag=admin] run fill -997 67 -3 -1003 67 -3 minecraft:polished_andesite
execute as @s[tag=admin] run fill -997 67 -3 -997 67 3 minecraft:polished_andesite
execute as @s[tag=admin] run fill -1003 67 3 -1003 67 -3 minecraft:polished_andesite
execute as @s[tag=admin] run fill -1003 67 3 -997 67 3 minecraft:polished_andesite
execute as @s[tag=admin] run setblock -1000 67 0 minecraft:sea_lantern
execute as @s[tag=admin] run setblock -1000 68 0 minecraft:blue_banner


tp @s[tag=admin] 0 70 0

gamemode creative @s[tag=admin]
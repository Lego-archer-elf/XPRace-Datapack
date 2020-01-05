team add blue "Blue"
team modify blue color blue
team add red "Red"
team modify red color red

tag @s remove waiting
tag @s add admin
gamemode creative @s

give @s minecraft:golden_apple{display:{Name:"{\"text\":\"Create Game Field\"}"}} 1
give @s minecraft:red_banner 16
give @s minecraft:red_wool{display:{Name:"{\"text\":\"Red Team\"}"}} 64
give @s minecraft:blue_banner 16
give @s minecraft:blue_wool{display:{Name:"{\"text\":\"Blue Team\"}"}} 64
give @s minecraft:enchanted_golden_apple{display:{Name:"{\"text\":\"Start Game\"}"}} 8
give @s minecraft:honey_bottle{display:{Name:"{\"text\":\"0 0 platform fail?\"}"}} 1

tp @s 0 68 0

execute as @s[tag=admin] run fill 4 68 4 -4 76 -4 air
execute as @s[tag=admin] run fill 3 67 3 -3 60 -3 stone
execute as @s[tag=admin] run fill 3 67 -3 -3 67 -3 minecraft:polished_andesite
execute as @s[tag=admin] run fill 3 67 -3 3 67 3 minecraft:polished_andesite
execute as @s[tag=admin] run fill 3 67 3 3 67 -3 minecraft:polished_andesite
execute as @s[tag=admin] run fill 3 67 3 -3 67 3 minecraft:polished_andesite

execute as @s[tag=admin] run fill 1 61 1 -1 61 -1 iron_block
execute as @s[tag=admin] run setblock 0 62 0 beacon
execute as @s[tag=admin] run fill 0 63 0 0 67 0 white_stained_glass

setworldspawn 0 68 0
gamerule spawnRadius 1

scoreboard objectives add xp_score dummy "Team Score"
scoreboard objectives add xp xp
scoreboard objectives add xp_current dummy
scoreboard objectives add xp_previous dummy
scoreboard objectives add death deathCount

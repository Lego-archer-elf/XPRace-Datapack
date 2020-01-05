tp @s 0 68 0

execute as @s[tag=admin] run fill 4 68 4 -4 76 -4 air
execute as @s[tag=admin] run fill 3 67 3 -3 60 -3 stone
execute as @s[tag=admin] run fill 3 67 3 -3 67 -3 minecraft:polished_andesite
execute as @s[tag=admin] run fill 2 67 2 -2 67 -2 minecraft:stone

execute as @s[tag=admin] run fill 1 61 1 -1 61 -1 iron_block
execute as @s[tag=admin] run setblock 0 62 0 beacon
execute as @s[tag=admin] run fill 0 63 0 0 67 0 white_stained_glass
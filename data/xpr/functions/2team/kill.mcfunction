execute as @s[team=blue] run say Oops, I broke the banner.
execute as @s[team=blue] run setblock ~ ~ ~ blue_banner
clear @s minecraft:blue_banner
kill @s[team=blue]
execute as @s[team=red] run say Oops, I broke the banner.
execute as @s[team=red] run setblock ~ ~ ~ red_banner
clear @s minecraft:red_banner
kill @s[team=red]

advancement revoke @s only xpr:2team/kill
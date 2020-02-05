tag @a remove waiting

# Randomly assign players to teams (first 12 unassigned players)
execute as @s[tag=admin] run give @r[tag=,team=] red_concrete
execute as @s[tag=admin] run give @r[tag=,team=] blue_concrete
execute as @s[tag=admin] run give @r[tag=,team=] red_concrete
execute as @s[tag=admin] run give @r[tag=,team=] blue_concrete
execute as @s[tag=admin] run give @r[tag=,team=] red_concrete
execute as @s[tag=admin] run give @r[tag=,team=] blue_concrete
execute as @s[tag=admin] run give @r[tag=,team=] red_concrete
execute as @s[tag=admin] run give @r[tag=,team=] blue_concrete
execute as @s[tag=admin] run give @r[tag=,team=] red_concrete
execute as @s[tag=admin] run give @r[tag=,team=] blue_concrete
execute as @s[tag=admin] run give @r[tag=,team=] red_concrete
execute as @s[tag=admin] run give @r[tag=,team=] blue_concrete

execute as @s[tag=admin] run xp set @a 0 points
execute as @s[tag=admin] run xp set @a 0 levels
execute as @s[tag=admin] run scoreboard objectives setdisplay belowName xp
execute as @s[tag=admin] run scoreboard players reset @a xp_score
execute as @s[tag=admin] run scoreboard objectives setdisplay sidebar xp_score

execute as @s[tag=admin] run tp @a[team=red] 1000 68 0
execute as @s[tag=admin] run tp @a[team=blue] -1000 68 0

execute as @s[tag=admin] run spawnpoint @a[team=red] 1000 68 0
execute as @s[tag=admin] run spawnpoint @a[team=blue] -1000 68 0

execute as @s[tag=admin] run tag @a remove captain
execute as @s[tag=admin] run tag @r[team=red,tag=!admin] add captain
execute as @s[tag=admin] run tag @r[team=blue,tag=!admin] add captain
execute as @s[tag=admin] run scoreboard players set @a[tag=captain] xp_score 0

execute as @a[tag=captain,team=red] run tellraw @a [{"selector":"@s"}," has been chosen as Red team captain."]
execute as @a[tag=captain,team=blue] run tellraw @a [{"selector":"@s"}," has been chosen as Blue team captain."]

execute as @s[tag=admin] run title @a times 0 40 40

execute as @s[tag=admin] run title @a title {"text":"GO!","color":"yellow","bold":true}

execute as @s[tag=admin] run time set day
execute as @s[tag=admin] run gamerule doDaylightCycle true

effect clear @a[tag=!admin]
effect give @s[tag=admin] night_vision 1000000 1 true

tellraw @a ["",{"text":"\n"}]
tellraw @a ["",{"text":"Let the XP Race begin!","color":"blue","bold":true}]
tellraw @a ["",{"text":"The aim of the game is to obtain as much experience as you can and return it to your flag to get points."}]
tellraw @a ["",{"text":"\n"}]

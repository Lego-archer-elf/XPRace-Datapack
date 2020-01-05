tag @a remove waiting
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

execute as @a[tag=captain,team=red] run tellraw @a [{"selector":"@s"}," has been chosen as Red team captain."]
execute as @a[tag=captain,team=blue] run tellraw @a [{"selector":"@s"}," has been chosen as Blue team captain."]

execute as @s[tag=admin] run title @a times 0 40 40

execute as @s[tag=admin] run title @a title {"text":"GO!","color":"yellow"}

execute as @s[tag=admin] run title @a actionbar {"text":"Collect XP and return to the banner","color":"green"}

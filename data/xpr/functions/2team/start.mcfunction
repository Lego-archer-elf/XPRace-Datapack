tag @a remove waiting
xp set @a 0 points
xp set @a 0 levels
scoreboard objectives setdisplay belowName xp
scoreboard players reset @a xp_score
scoreboard objectives setdisplay sidebar xp_score

tp @a[team=red] 1000 68 0
tp @a[team=blue] -1000 68 0

spawnpoint @a[team=red] 1000 68 0
spawnpoint @a[team=blue] -1000 68 0

tag @a remove captain
tag @r[team=red,tag=!admin] add captain
tag @r[team=blue,tag=!admin] add captain

execute as @a[tag=captain,team=red] run tellraw @a [{"selector":"@s"}," has been chosen as Red team captain."]
execute as @a[tag=captain,team=blue] run tellraw @a [{"selector":"@s"}," has been chosen as Blue team captain."]

title @a times 0 40 40

title @a title {"text":"GO!","color":"yellow"}

title @a actionbar {"text":"Collect XP and return to the banner","color":"green"}


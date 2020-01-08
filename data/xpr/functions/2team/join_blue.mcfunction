team join blue @s[tag=!admin]
clear @s[tag=!admin] blue_concrete
spawnpoint @s[tag=!admin] -1000 68 0
kill @s[tag=!admin,team=blue]

scoreboard players set @s cycle 0


advancement revoke @s[tag=!admin,team=] only xpr:2team/assign_team_blue
advancement revoke @s[tag=!admin,team=blue] only xpr:2team/assign_team_red

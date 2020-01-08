team join red @s[tag=!admin]
clear @s[tag=!admin] red_concrete
spawnpoint @s[tag=!admin] 1000 68 0
kill @s[tag=!admin,team=red]

scoreboard players set @s cycle 0

advancement revoke @s[tag=!admin,team=] only xpr:2team/assign_team_red
advancement revoke @s[tag=!admin,team=red] only xpr:2team/assign_team_blue

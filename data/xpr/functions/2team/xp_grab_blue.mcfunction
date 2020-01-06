scoreboard players operation @s[scores={death=1}] xp_previous = @s xp
scoreboard players set @s[scores={death=1}] death 0

scoreboard players operation @s[scores={death=0}] xp_current = @s xp
scoreboard players set @s[scores={death=0}] death 2

scoreboard players operation @s[scores={death=2}] xp_current -= @s xp_previous
scoreboard players set @s[scores={death=2}] death 3

scoreboard players operation @p[team=blue,tag=captain] xp_score += @s[scores={death=3}] xp_current
xp set @s[scores={death=3}] 0 points
xp set @s[scores={death=3}] 0 levels

scoreboard players operation @s[scores={death=3}] xp_previous = @s xp

scoreboard players set @s[scores={death=3}] death 0

advancement revoke @s only xpr:2team/xp_grab_blue

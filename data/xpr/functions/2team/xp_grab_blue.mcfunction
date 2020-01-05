scoreboard players operation @s[scores={death=1}] xp_previous = @s xp

scoreboard players operation @s[scores={death=0}] xp_current = @s xp
scoreboard players operation @s[scores={death=0}] xp_current -= @s xp_previous

scoreboard players operation @p[team=blue,tag=captain] xp_score += @s[scores={death=0}] xp_current
xp set @s 0 points
xp set @s 0 levels

scoreboard players operation @s[scores={death=0}] xp_previous = @s xp

scoreboard players set @s death 0

advancement revoke @s only xpr:2team/xp_grab_blue

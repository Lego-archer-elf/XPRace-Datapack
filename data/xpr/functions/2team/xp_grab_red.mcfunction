scoreboard players operation @s[scores={death=1..100}] xp_previous = @s xp

scoreboard players operation @s[scores={death=0}] xp_current = @s xp

scoreboard players operation @s[scores={death=101,xp_current=0..}] xp_current -= @s xp_previous

scoreboard players operation @p[team=red,tag=captain] xp_score += @s[scores={death=102,xp_current=0..}] xp_current
xp set @s[scores={death=102}] 0 points
xp set @s[scores={death=102}] 0 levels

scoreboard players operation @s[scores={death=102}] xp_previous = @s xp

scoreboard players set @s[scores={death=102}] death 0
scoreboard players set @s[scores={death=101}] death 102
scoreboard players set @s[scores={death=0}] death 101
scoreboard players set @s[scores={death=1..100}] death 0

advancement revoke @s only xpr:2team/xp_grab_red

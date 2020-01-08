scoreboard players operation @s[scores={death=1..}] xp_previous = @s xp

scoreboard players operation @s[scores={cycle=0}] xp_current = @s xp

scoreboard players operation @s[scores={cycle=1,xp_current=0..}] xp_current -= @s xp_previous

scoreboard players operation @p[team=blue,tag=captain] xp_score += @s[scores={cycle=2,xp_current=0..}] xp_current
xp set @s[scores={cycle=2}] 0 points
xp set @s[scores={cycle=2}] 0 levels

scoreboard players operation @s[scores={cycle=2}] xp_previous = @s xp

function xpr:2team/xp_cycle

advancement revoke @s only xpr:2team/xp_grab_blue

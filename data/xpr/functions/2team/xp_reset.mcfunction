scoreboard players set @s cycle 0

scoreboard players operation @s[scores={death=1..}] xp_previous = @s xp
scoreboard players set @s[scores={death=1..}] death 0

advancement revoke @s only xpr:2team/xp_reset

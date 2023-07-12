execute as @e[name=b] at @s run execute if entity @a[nbt={SelectedItem:{tag:{Custom:112}}},limit=1,sort=nearest] run kill @e[name=b]
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @s[scores={playerHit=1..}] run execute at @e[nbt={HurtTime:10s}] run tag @e[type=!player,nbt=!{SelectedItem:{tag:{Custom:112}}},distance=..5,type=!item,type=!minecraft:wolf,type=!minecraft:armor_stand,type=!arrow,type=!experience_orb] add kill
execute at @a[scores={no=1},limit=1] run tellraw @a ["",{"text":"Demonized Sword:","bold":true,"color":"red"},{"text":"No! I'm not gonna deal with that thing","bold":true,"color":"white"}]
execute as @a[scores={no=1},limit=1] at @s run scoreboard players add @s no 1
execute as @e[tag=kill] at @s run attribute @s minecraft:generic.max_health base set 1
execute as @e[tag=kill] at @s run effect give @s minecraft:wither 100 100 true
execute as @e[tag=kill] at @s run playsound minecraft:entity.drowned.shoot voice @a ~ ~ ~ 1 1
execute as @e[tag=kill] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a
execute as @e[tag=kill,type=!#minecraft:skeletons] at @s run particle minecraft:item redstone ~ ~1.5 ~ 0.2 0.3 0.2 0.05 10 force @a
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s at @e[type=#minecraft:impact_projectiles,distance=..3] run playsound minecraft:block.anvil.land voice @a ~ ~ ~ 0.5 2
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s at @e[type=#minecraft:impact_projectiles,distance=..3] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 normal @a
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s run kill @e[type=#minecraft:impact_projectiles,distance=..3]
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @a[scores={playerHit=1..}] run effect give @a[scores={playerHit=1..}] minecraft:mining_fatigue 1 5 true
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @a[scores={playerHit=1..}] run effect give @a[scores={playerHit=1..}] minecraft:saturation 5 0 true
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @a[scores={playerHit=1..}] run effect give @a[scores={playerHit=1..}] minecraft:regeneration 2 2 true
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @a[scores={playerHit=1..}] run kill @e[type=wither]
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @a[scores={playerHit=1..}] run kill @e[type=wither_skeleton]
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] run execute at @a[scores={playerHit=1..}] run tag @e[type=ender_dragon] remove kill
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s run particle minecraft:soul ^ ^1 ^ 0.7 0.5 0.7 0.01 1 normal @a
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s run effect give @s speed 1 3 true
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s run effect give @s hunger 3 1 true
scoreboard players reset @a[scores={playerHit=1..}] playerHit
execute as @a[nbt={SelectedItem:{tag:{Custom:112}}}] at @s run tag @e[type=!player,type=!cat,type=!wolf,distance=..2,type=!item,type=!experience_orb] add kill
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run particle sweep_attack ^ ^1.5 ^5 3 1 3 4 10 normal @a
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run replaceitem entity @p weapon.mainhand minecraft:netherite_sword{Custom:1,display:{Name:'{"text":"Demonized","color":"dark_red","italic":false,"obfuscated":true}'},Enchantments:[{lvl:103,id:"minecraft:piercing"},{id:quick_charge,lvl:5}],HideFlags:5,Unbreakable:1,Custom:112}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run playsound minecraft:entity.drowned.shoot voice @a ~ ~ ~ 1 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=phantom,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=#skeletons,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=zombie,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=zombie_villager,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=zombified_piglin,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=drowned,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=husk,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=zoglin,distance=..10] instant_health 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @p run effect give @e[type=!phantom,type=!#skeletons,type=!zombie,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!zoglin,distance=..10,nbt=!{SelectedItem:{tag:{Custom:112}}}] instant_damage 1 0 true
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s at @e[type=!player,type=!item,type=!experience_orb,distance=..10] run particle item redstone ~ ~1.5 ~ 0.2 0.3 0.2 0.05 4 force @a
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}] at @s run effect give @e[type=!player,type=!item,type=!experience_orb,distance=..10] slowness 1 5 true
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",tag:{Custom:112}}}]
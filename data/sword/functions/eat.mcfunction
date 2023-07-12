execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}] run execute if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:64b}},distance=..0.4] run summon armor_stand ^ ^-0.5 ^ {NoGravity:1b,Invisible:1b,ShowArms:1b,CustomName:'{"text":"b"}',Pose:{RightArm:[265f,100f,177f]}}
execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}] run execute if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:64b}},distance=..0.4] run kill @e[type=item,distance=..5]
scoreboard players add @e[name="b"] no1 1
execute at @e[name="b",scores={no1=1}] run playsound block.fire.extinguish voice @a ^ ^ ^ 10 0.5
execute at @e[name="b",scores={no1=1}] run weather thunder
execute at @e[name="b",scores={no1=1..60}] run playsound entity.phantom.flap voice @a ^ ^ ^ 10 1
execute at @e[name="b",scores={no1=20}] run playsound entity.wither.ambient voice @a ^ ^ ^ 10 0.5
execute at @e[name="b",scores={no1=1..60}] run particle soul ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 20
execute at @e[name="b",scores={no1=61}] run summon tnt
execute at @e[name="b",scores={no1=61}] run playsound entity.wither.death voice @a ^ ^ ^ 10 2
execute at @e[name="b",scores={no1=61}] run particle minecraft:soul ~ ~0.5 ~ 0 0 0 0.2 3000 normal @a
execute at @e[name="b",scores={no1=61}] run summon lightning_bolt ~ ~ ~
execute at @e[name="b",scores={no1=63}] run fill ~-3 ~-3 ~-3 ~3 ~ ~3 soul_sand replace air
execute at @e[name="b",scores={no1=63}] run setblock ~-2 ~1 ~1 fire
execute at @e[name="b",scores={no1=63}] run setblock ~2 ~1 ~1 fire
execute at @e[name="b",scores={no1=63}] run setblock ~-1 ~1 ~-1 fire
execute at @e[name="b",scores={no1=63}] run weather clear
execute at @e[name="b",scores={no1=61}] run replaceitem entity @e[name="b",limit=1,sort=nearest] weapon.mainhand minecraft:netherite_sword{Custom:1,display:{Name:'{"text":"Demonized","color":"dark_red","italic":false,"obfuscated":true}'},Enchantments:[{lvl:103,id:"minecraft:piercing"},{id:quick_charge,lvl:5}],HideFlags:5,Unbreakable:1,Custom:112}
execute at @e[name=b] run particle minecraft:soul ^0.3 ^0.6 ^-0.2 0.2 0.5 0.2 0.01 1 normal @a
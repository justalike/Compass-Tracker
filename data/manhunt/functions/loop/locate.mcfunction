# Set dimension
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] if data entity @s {Dimension: "minecraft:overworld"} if entity @a[team=Runner,gamemode=!spectator,distance=0..] run data modify storage manhunt:test Item set value {id: "minecraft:compass", tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}, LodestoneTracked: 0b, LodestoneDimension: "minecraft:overworld", LodestonePos: {X: 0, Y: 0, Z: 0}}, Count: 1b}
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] if data entity @s {Dimension: "minecraft:the_end"} if entity @a[team=Runner,gamemode=!spectator,distance=0..] run data modify storage manhunt:test Item set value {id: "minecraft:compass", tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}, LodestoneTracked: 0b, LodestoneDimension: "minecraft:the_end", LodestonePos: {X: 0, Y: 0, Z: 0}}, Count: 1b}
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] if data entity @s {Dimension: "minecraft:the_nether"} if entity @a[team=Runner,gamemode=!spectator,distance=0..] run data modify storage manhunt:test Item set value {id: "minecraft:compass", tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}, LodestoneTracked: 0b, LodestoneDimension: "minecraft:the_nether", LodestonePos: {X: 0, Y: 0, Z: 0}}, Count: 1b}

# Set position
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] at @s if entity @a[team=Runner,gamemode=!spectator,distance=0..] store result storage manhunt:test Item.tag.LodestonePos.X int 1 run data get entity @a[team=Runner,gamemode=!spectator,limit=1,sort=nearest] Pos[0]
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] at @s if entity @a[team=Runner,gamemode=!spectator,distance=0..] store result storage manhunt:test Item.tag.LodestonePos.Y int 1 run data get entity @a[team=Runner,gamemode=!spectator,limit=1,sort=nearest] Pos[1]
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] at @s if entity @a[team=Runner,gamemode=!spectator,distance=0..] store result storage manhunt:test Item.tag.LodestonePos.Z int 1 run data get entity @a[team=Runner,gamemode=!spectator,limit=1,sort=nearest] Pos[2]


execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] in minecraft:overworld run data modify block 0 0 0 Items append from storage manhunt:test Item
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] in minecraft:the_nether run data modify block 0 0 0 Items append from storage manhunt:test Item
execute as @a[nbt={SelectedItem: {id: "minecraft:compass", Count: 1b, tag: {display: {Name: '{"text":"Tracker Compass","color": "aqua","italic": false}'}}}}] in minecraft:the_end run data modify block 0 0 0 Items append from storage manhunt:test Item


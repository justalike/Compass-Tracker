# Give compasses to hunters
team join Hunter @a[team=!Runner]
give @a[team=Hunter] compass{display:{Name:'{"text":"Tracker Compass","color": "aqua","italic": false}'}}
tellraw @a[team=Hunter] {"text":"Your compass will update when held. It will point toward the nearest player.","color":"aqua"}

schedule function manhunt:loop/locate 10
/// @desc Initiate the Player
moveSpd = 3;
dashDist = 128;
hsp = 0;
vsp = 0;
cooldown = 0;
maxCooldown = 30;
iFrames = 30;
currentIFrames = 0;
blend = c_white
blendTime = 0;
bulletSpeed = 10;

//Player Stats
hp = 100;
xp = 10000000;
neededXP = 5;

levelUp = false;
playerRange = 10 + global.data.baseRange;
global.dmgType = Type.NORMAL;
projectileType = sFireball;
projectileCount = 6;
multishotSpread = 45;
maxSpread = 20;

//Charge Stuff
currentCharge = 0;
maxCharge = 3;
chargeRate = 0.05;

//Other
alarm[0] = 1;
/// @desc Initiate the Player
moveSpd = 3;
dashDist = 128;
hsp = 0;
vsp = 0;
cooldown = 0;
iFrames = 30;
currentIFrames = 0;
blend = c_white
blendTime = 0;

//Player Stats
hp = 100;
xp = 500;
neededXP = 5;

levelUp = false;
playerRange = 10 + global.data.baseRange;
global.dmgType = Type.NORMAL;

//Charge Stuff
currentCharge = 0;
maxCharge = 2;
chargeRate = 0.05;
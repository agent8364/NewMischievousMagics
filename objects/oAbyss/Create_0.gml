desc = "The Abyss\nCongrats. You've gotten every perk in the game :D";
global.text = desc;

clicked = function() {
	oUpgradeController.upgrading = false;
	global.text = "";
}
event_inherited();
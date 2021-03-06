params ["_badCiv","_player"];

_badCiv disableAI "MOVE"; // disable movement during search

_hintText = selectRandom ["This civilian is carrying a gun.","The civilian is armed.","You spot a firearm under his clothes."];
hint _hintText;

sleep 3; // wait a few seconds to allow the player to react

_badCiv enableAI "MOVE";

// make hostile - this could trigger a spot & target callout by friendly AI
[_badCiv] call TRGM_fnc_badCivTurnHostile;

_badCiv doTarget _player;
_badCiv commandFire _player;

_gun = primaryWeapon _badCiv;

sleep 3;
_badCiv fire _gun;
sleep 1;
_badCiv fire _gun;
sleep 1;
_badCiv fire _gun;

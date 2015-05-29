/*
	ArmA 3 Epoch Donkey Punch
	by =RAV=MusTanG
	Temp Groups Menu GUI v0.1
*/

if (!isnil "Press_A3") then 
{
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", Press_A3];
};

Bindings_A3 =
{
	private ["_key", "_return"];
	_key = _this select 1;
	_return = false;
    
	switch (_key) do 
	{
		case 210:
		{
            [] execVM "scripts\group\dialog\groupMenu.sqf";
		};
		/*case 61:
		{
            [] execVM "scripts\donkeymenu\opendonkeymenu.sqf";
		};
		case 38:
		{
            if ((currentWeapon player) == "MeleeFlashlight") then {
                ;
            };
		};
        case 14:
        {
            if (r_player_onVehicleC and alive player) then {
                [] execVM "player_getout.sqf";
            };
        };*/
	};
    _return
};

waituntil {!isnull (finddisplay 46)};
Press_A3 = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call Bindings_A3; false;"];
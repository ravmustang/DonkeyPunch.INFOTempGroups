/*
	ArmA 3 Epoch Donkey Punch
	by =RAV=MusTanG
	Temp Groups Menu GUI v0.1
	Ported and Redone from Arma 2 Group Management [404] Deadbeat
*/

if (!isnil "Press_A3") then 
{
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", Press_A3];
};

DonkeyGroups_Epoch =
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
	};
    _return
};

waituntil {!isnull (finddisplay 46)};
Press_A3 = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call DonkeyGroups_Epoch; false;"];
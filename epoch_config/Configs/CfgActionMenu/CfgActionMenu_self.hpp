class player_temp_group_menu
{
	condition = "_ok = false;_ok = !(currentInvites isEqualTo []);if!(_ok)then{_ok = !(Epoch_my_tempGroup isEqualTo [])};_ok";
	action = "[] execVM 'scripts\group\dialog\groupMenu.sqf';";
	icon = "scripts\temp_group_menu_ca.paa";
	tooltip = "Temp Group Menu";
};
//group
class player_temp_group_menu
{
	condition = "((typeOf cursorTarget in ['Epoch_Male_F','Epoch_Female_F']) && (player distance cursorTarget <= 5))";
	action = "[] execVM 'scripts\group\dialog\groupMenu.sqf';";
	icon = "scripts\temp_group_menu_ca.paa";
	tooltip = "Temp Group Menu";
};
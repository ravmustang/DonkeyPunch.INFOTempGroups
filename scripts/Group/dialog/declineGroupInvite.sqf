/*
	ArmA 3 Epoch Donkey Punch
	by =RAV=MusTanG
	Temp Groups Menu GUI v0.1
	Ported and Redone from Arma 2 Group Management [404] Deadbeat
*/
{
	if(getPlayerUID player == _x select 1) then
	{
        currentInvites set [_forEachIndex,"REMOVETHISCRAP"];
        currentInvites = currentInvites - ["REMOVETHISCRAP"];
        publicVariableServer "currentInvites";       
	};
}forEach currentInvites;

    hint parseText format["<t size='1.20' font='Bitstream' color='#0CE800'>[GROUP]</t><br/>
        <t size='1' font='Bitstream' align='left'>You have declined the invite.</t><br/>"];
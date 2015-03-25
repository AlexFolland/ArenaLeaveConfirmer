--local origConfirmOrLeaveBattlefield = ConfirmOrLeaveBattlefield;
ConfirmOrLeaveBattlefield = function()
	if select(1, IsActiveBattlefieldArena()) then
		LeaveBattlefield();
	else
		StaticPopup_Show("CONFIRM_LEAVE_BATTLEFIELD"); --origConfirmOrLeaveBattlefield();
	end
end
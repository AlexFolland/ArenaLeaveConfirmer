local origConfirmOrLeaveBattlefield = ConfirmOrLeaveBattlefield;
ConfirmOrLeaveBattlefield = function()
	if IsActiveBattlefieldArena() then
		LeaveBattlefield();
	else
		origConfirmOrLeaveBattlefield();
	end
end
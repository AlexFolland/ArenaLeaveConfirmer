local origConfirmOrLeaveBattlefield = ConfirmOrLeaveBattlefield;
ConfirmOrLeaveBattlefield = function()
	if IsActiveBattlefieldArena() then
		LeaveBattlefield();
	end
end
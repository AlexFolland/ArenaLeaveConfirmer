--to do: make this whole function never taint
--idea: check the values of IsActiveBattlefieldArena() after the match has ended but the player is still in the arena
--idea 2: use hooksecurefunc() to hook ConfirmOrLeaveBattlefield() then hide the popup
--hooksecurefunc("ConfirmOrLeaveBattlefield", myConfirmOrLeaveBattlefield)
--local origConfirmOrLeaveBattlefield = ConfirmOrLeaveBattlefield

--okay, forget all that above.  this probably works.  test test test!
ConfirmOrLeaveBattlefield = function()
	local inArena, isRated = IsActiveBattlefieldArena()
	if inArena then
		LeaveBattlefield()
		return
	elseif not GetBattlefieldWinner() then
		StaticPopup_Show("CONFIRM_LEAVE_BATTLEFIELD")
	end
end
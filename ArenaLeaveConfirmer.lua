local function hook_ConfirmOrLeaveBattlefield(...)
	if select(1, IsActiveBattlefieldArena()) or GetBattlefieldWinner() then
		StaticPopup_Hide("CONFIRM_LEAVE_BATTLEFIELD")
		LeaveBattlefield()
	end
end
hooksecurefunc("ConfirmOrLeaveBattlefield", hook_ConfirmOrLeaveBattlefield)
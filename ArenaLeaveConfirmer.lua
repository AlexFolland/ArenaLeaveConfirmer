--to do: make this whole function never taint
--idea: check the values of IsActiveBattlefieldArena() after the match has ended but the player is still in the arena
--idea 2: use hooksecurefunc() to hook ConfirmOrLeaveBattlefield() then hide the popup
--hooksecurefunc("ConfirmOrLeaveBattlefield", myConfirmOrLeaveBattlefield)
--local origConfirmOrLeaveBattlefield = ConfirmOrLeaveBattlefield

--okay, forget all that above.  this probably works.  test test test!
local debug = true
ConfirmOrLeaveBattlefield = function()
	local inArena, isRated = IsActiveBattlefieldArena()
	if inArena then
		if debug then print("ArenaLeaveConfirmer: inArena is true") end
		LeaveBattlefield()
	end
end
	--[[
	--check whether queued for arena to work around weird bug
	local inArenaQueue = false
	for i=1, GetMaxBattlefieldID() do
		local status, mapName, teamSize, registeredMatch, suspend = GetBattlefieldStatus(i)
		if teamSize > 0 then
			local inArenaQueue = true
		end
	end
	
	local inArena, isRated = IsActiveBattlefieldArena()
	if inArena then
		if debug then print("ArenaLeaveConfirmer: inArena is true") end
		LeaveBattlefield()
		return
	elseif not inArenaQueue then
		if debug then print("ArenaLeaveConfirmer: not in arena queue") end
		StaticPopup_Show("CONFIRM_LEAVE_BATTLEFIELD")
		return
	end
	if debug then print("ArenaLeaveConfirmer: got to the end, so queued for arena and not in arena") end
end
--]]
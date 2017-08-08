local function ArenaLeaveConfirm(self)
    if IsActiveBattlefieldArena() or GetBattlefieldWinner() then
        self.button1:Click()
    end
end

hooksecurefunc(StaticPopupDialogs["CONFIRM_LEAVE_BATTLEFIELD"],"OnShow",ArenaLeaveConfirm)

hooksecurefunc(StaticPopupDialogs["CONFIRM_SURRENDER_ARENA"],"OnShow",ArenaLeaveConfirm)
if not WeakAuras.IsLibsOK() then return end

local AddonName, Private = ...

local LibGroupTalents = LibStub:GetLibrary("LibGroupTalents-1.0", true)
local subscribers = {}

Private.LibGroupTalentsWrapper = {
  Register = function(f) end,
}

if LibGroupTalents then
  function Private.LibGroupTalentsWrapper.CallbackHandler(_, _, _, unit)
    if unit then
      for _, f in ipairs(subscribers) do
        f(unit)
      end
    end
  end

  function Private.LibGroupTalentsWrapper.Register(f)
    table.insert(subscribers, f)
  end

  WeakAuras.LGT.RegisterCallback(Private.LibGroupTalentsWrapper, "LibGroupTalents_Update", "CallbackHandler")
end

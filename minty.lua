local Minty = {}
function Minty.New(NumberString)
  local Instance = setmetatable({}, Minty)
  Instance.Number = {}
  Instance.Number.String = ""
  Instance.Number.Table = {}
end
return Minty
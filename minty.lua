local Minty = {}
function Minty.New(InputtedNumber)
  local Type = type(InputtedNumber)
  local Instance = setmetatable({}, Minty)
  Instance.Number = {}
  Instance.Number.String = ""
  Instance.Number.Table = {}
  local TemporaryTable = {}
  if Type == "string" then
	local Pointer = 1
	local Sub = 0
	while Sub do
	  Sub = InputtedNumber:sub(Pointer, Pointer)
	  if #TemporaryTable < 12 then TemporaryTable[#TemporaryTable+1] = Sub
	  else
		local ResultingNumber = table.concat(TemporaryTable)
		Instance.Number.String = ResultingNumber
		Instance.Number.Table[#Instance.Number.Table+1] = tonumber(ResultingNumber)
		TemporaryTable = {}
	  end
	  Pointer = Pointer + 1
	end
  elseif Type == "number" then
    local Base = 10
	local TemporaryNumber = 0
	while InputtedNumber > 0 do
	  -- Some code here
	end
  end
end
return Minty
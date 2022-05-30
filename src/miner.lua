-- Makes a mineshaft with some optional features --
-- Made by @Sharpened99 --
-- alpha0.1.1 --

-- Variables --
local hallLength
local branchDepth = 0
local torchPlacement = false

-- Arguments --
-- Usage: miner <hallLength> <branchDepth> <torchPlacement>

local tArgs = {...}

if #tArgs < 1 or #tArgs > 3 then
    print("Usage: <hallLength> <branchDepth> <torchPlacement>")
elseif  #tArgs == 1 then
    assert(isInteger(tArgs[1]))

    hallLength = tArgs[1]
elseif #tArgs == 2 then
    assert(isInteger(tArgs[1]))
    assert(isInteger(tArgs[2]))

    hallLength = tArgs[1]
    branchDepth = tArgs[2]
elseif #tArgs == 3 then
    assert(isInteger(tArgs[1]))
    assert(isInteger(tArgs[2]))
    assert(isBoolean(tArgs[3]))

    hallLength = tArgs[1]
    branchDepth = tArgs[2]
    torchPlacement = tArgs[3]
end

 -- Usage Errors --
if hallLength < 1 then
    print("hallLength must be a positive number")
end
if branchDepth < 0 then
    print("branchDepth must be either 0 (disables branches) or positive")
end
if torchPlacement ~= false and torchPlacement ~= true then
    print("torchPlacement must be either omitted, true or false")
    print("0 and 1 as stand-ins for false and true are acceptable")
end

function isInteger(n)
    return type(n) == "number" and math.floor(n) == n
end

function isBoolean(x)
    return type(x) == "boolean"
end
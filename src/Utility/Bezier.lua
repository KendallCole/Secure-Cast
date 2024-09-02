local Bezier = {}

local function Lerp(a, b, c)
    return a + (b - a) * c
end

function Bezier.QuadraticBezier(Offset: number, StartPosition: Vector3, MidPosition: Vector3, EndPosition: Vector3)
    local L1 = Lerp(StartPosition, MidPosition, Offset)
    local L2 = Lerp(MidPosition, EndPosition, Offset)
    return Lerp(L1, L2, Offset)
end

--Alternativeley writen as: 
--[[
    function Bezier.QuadraticBezier(t: number ,p0: Vector3,p1: Vector3, p2: Vector3)
        return (1-t)^2*p0+2*(1-t)*t*p1+t^2*p2; --<Very simple :D
    end
]]


return Bezier
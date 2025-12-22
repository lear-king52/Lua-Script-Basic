local function divide(a, b)
    if b == 0 then 
        return nill, "Division by zero error"  
    else 
        return math.floor(a / b), a % b 
    end 
    
end 

local quotient, remainder = divide(10, 3) 
print(quotient, remainder)
local quotient, remainder = divide(10, 0) 
print(quotient, remainder)
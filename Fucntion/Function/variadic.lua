local function sumAll(...)
    local sum = 0 
    for _, v in ipairs{...} do 
        sum = sum + v 
    end 
    return sum 
end

print(sumAll(1, 2, 3, 4, 5))  -- Output: 15
print(sumAll(10, 20, 30))     -- Output: 60
 

function applyTwice(f, x)
    return f(f(x))
end

 
function addOne(n) return n + 1 end 
print(applyTwice(addOne, 5))  -- 7
   
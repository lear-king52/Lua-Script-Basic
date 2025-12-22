-- function functionName(parameters)
--     -- body
--     return value
-- end

-- In Lua, functions are first-class, which means:

-- Can be stored in variables

-- Passed as arguments

-- Returned from other functions


local sayHello = function (name)
    print("Hello " .. name)
 
end
sayHello("anis")


-- local vs global function 
function globalFunc()
    print("I am global")
end

local function localFunc()
    print("I am local")
end

-- globalFunc → accessible anywhere in this runtime (unsafe in Redis scripts)

-- localFunc → accessible only inside current scope (safe, recommended)

local sayHello = function(name) print("Hello " .. name) end 

sayHello("fatema")


function greet(name)
    print("Hello, " .. name)
end

greet("anis")  


-- add two numbers 
local function add(a, b) 
    return ( a + b)  
end

local result = add(10, 20)  
local ans = add(1, 2)
print(result) 
print(ans)
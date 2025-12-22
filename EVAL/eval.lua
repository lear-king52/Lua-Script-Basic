
-- EVAL "local key=KEYS[1]; local val=redis.call('GET',key); if not val then val=0 else val=tonumber(val) end; if val>10 then val=val+10 else val=val-5 end; redis.call('SET',key,val); return val" 1 counter
 
 

EVAL "
local key1, key2 = KEYS[1], KEYS[2];
local val1 = redis.call('GET', key1); 
local val2 = redis.call('GET', key2);  
if not val1 then 
    val1 = 0 
else val1 = tonumber(val1) 
end; 
if not val2 then 
    val2 = 0 
else val2 = tonumber(val2)
end;
redis.call('SET', key1, val2); 
redis.call('SET', key2, val1) 
return {val1, val2}" 2 key1 key2
 
print('hello world')

-- define a function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n - 1)
  end
end

--print('Enter a number:')
--num = io.read('*n')
num = 3
print(fact(num))

--block comments
--[[
print(10)
--]]

print(b)
b = 22
print(b)
b = nil
print(b)

-- 1.1

function fact2(n)
  if n < 0 then
    print('Bad entry, factorials are for positives.')
  elseif n == 0 then
    return 1
  else
    return n * fact2(n - 1)
  end
end
print(fact2(-2))

-- 1.4
print('Valid Names:')
print('___ _end END NULL')

-- 1.5
print('Filename is: ', arg[0])

-- variadic

function add(...)
  local sum = 0
  for _, val in ipairs({...}) do
    sum = sum + val
  end
  return sum
end

print(add(1, 22, 53, 9))

-- 5.1

function combine(...)
  base = ''
  for _, val in ipairs({...}) do
    base = base .. val
  end
  return base
end

print(combine('first', ' second', ' third'))

-- 5.2

function print_all(arg) 
  print(table.unpack(arg))
end

print_all({1, 2, 3, 4, 5})

-- 5.3
 
function rest(first, ...)
  return ...
end

print(rest(1, 2, 3, 4))

-- 5.4 

-- TODO: Will return to.

function rec_comb()

end

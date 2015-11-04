-- exponent
print(2^3)

-- negate equiality
if 0 ~= 1 then
  print('Negation was true.')
end

-- length
d = {}
d[1] = 1
d[10000] = 1
print(#d)

--tables
days = {'Sunday', 'Monday', 'Tuesday'}
print(days[1])

dict = {x=20, y=30, z='a string'}
print(dict['z'])

-- mixed record
polyline = {
  color = 'blue',
  thickness = 2,
  npoints = 4,
  {x=0, y=0},
  {x=-10, y=0},
  {x=-10, y=1},
  {x=0, y=1},
}

print(polyline.color)
print(polyline[2].x)

-- 3.1

print('Ex 3.1')
for i = -10, 10 do
  print(i, i % 3)
end

-- 3.2
print('Ex 3.2')
print('2 ^ 3 ^ 4 == 2 ^ (3 ^ 4)')
print(2 ^ 3 ^ 4, 2 ^ (3 ^ 4))

-- 3.3
print('Ex 3.3')

function poly_val(coefs, x)
  -- Since lua one indexed, pos 1 is x^0 coefficient and so on
  sum = 0

  for idx, val in ipairs(coefs) do
    idx = idx -1
    sum = sum + (val * x ^ idx)
  end

  return sum
end

print('Find value of polynomial:')
print('4 - x + 2x^2 + x^3 + 3x^4, for x = 3')
polys = {4, -1, 2, 1, 3}
print(poly_val(polys, 3))

-- 3.4
print('Ex 3.4')
function poly_val2(coefs, x)
  -- Since lua one indexed, pos 1 is x^0 coefficient and so on
  sum = coefs[#coefs]

  for idx = #coefs - 1, 1, -1 do
    sum = (x * sum) + coefs[idx]
  end

  return sum
end
print('In n adds/mults same value for polynomial dict.')
print(poly_val2(polys, 3))

--3.5
print('Ex 3.5')
function is_bool(val)
  return val == true or val == false
end
print(is_bool('a'))
print(is_bool(true))

-- 3.6
print('Ex 3.6')
print('I would never write such a mess, especially not without brackets.')
print('Unless I was trying to torture someone.')

-- 3.7
print('Ex 3.7')

sunday = 'monday'
monday = 'sunday'
t = {sunday = 'monday', [sunday] = monday}
print(t.sunday, t[sunday], t[t.sunday])

-- 3.8
print('Ex 3.8')

print('Use explicit constructor:')
print([=[meaning = {["\n"] = 'new line', ["\b"] = 'bell char'}]=])
meaning = {["\n"] = 'new line', ["\b"] = 'bell char'}
print(meaning['\n'])

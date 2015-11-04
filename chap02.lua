-- strings

a = 'one string'
b = string.gsub(a, 'one', 'another')
print(a,'--', b)

print('len of a:', #a)

-- long strings, heredoc
page = [[
line 1
line 2
line 3
]]
print(page)

print(10 .. 20)
print('10' + 11)

-- tables (dicts)

d = {}
print(d)
k = 'x'
d[k] = 10
print(d[k], d['x'])

for i = 1, 1000 do
  d[i] = i * 2
end

-- 2.1
print('Value should be false, lhs string, rhs nil type.')
print(type(nil) == nil)

-- 2.2

print('Correct numbers:\n' .. .0e12, 0x12, 0xA, 0xFFFFFFFF, 0.1e1)

-- 2.3
function expo(base, exp)
  if exp < 0 then
    return 'positive exp only'
  elseif exp == 1 then
    return base
  else 
    return base * expo(base, exp - 1)
  end
end


print('12.7 == 127/10 == x/2')
print('5.5 == 55/10 == 11/2')

-- 2.4

str = '<![CDATA[\
Hello world\
]]>'

str2 = "<![CDATA[\nHello world\n]]>"

str3 = [==[
<![CDATA[
Hello world
]]>
]==]

print(str)
print(str2)
print(str3)


-- 2.6
a = {}
a.a = a
print(a)
print(a.a)
print('Any series of indexing a will just access the dictionary first created.')

a.a.a.a = 3
print(a.a)
print('By setting a.a = 3, the recursive nesting void. Doing a.a.a.a would be an error.')

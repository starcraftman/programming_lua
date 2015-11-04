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
--

-- assignment

a, b = 1, 'word'
print(a, b)

a, b, c = 1, 2
print('c:', c)

a, b = 1, 2, 3

-- local variables

-- contrains i to the scope currently in, this case the file
local i = 0

-- controls

if a > b then
  print('greater')
elseif a == b then
  print('equal')
else
  print('less')
end

local i = 2
while i > 0 do
  print(i)
  i = i - 1
end

i = 3
repeat
  print(i)
  i = i - 1
until i < 0

-- for loops

for i = 1, 5, 2 do
  print(i)
end

for key, val in pairs({'a', 'b', 'c'}) do
  print(key, '=>', val)
end

-- goto
a = 5
if a == 5 then
  goto label
else
  a = 6
end

::label::
print('jumped', a)

-- 4.1

-- TODO: Not certain, I'd like to know.

-- 4.2
print('see code for answers')

--while true do
  --print('way 1')
--end

--repeat
  --print('way 2')
--until true


--for i = 0, math.huge do
  --print('way 3')
--end

--do
  --::start::
  --print('way 4')
  --goto start
--end

-- 4.3

-- Don't care in the least. I prefer using while exclusively with strong loop invariants.

-- 4.4

-- Personal Note: That goto laden state machine is the stuff of nightmares.

rooms = {
  {south = 3, east = 2},
  {south = 4, west = 1},
  {north = 1, east = 4},
}

room = 1
while room ~= 4 do
  cur_room = rooms[room]
  for key, _ in pairs(cur_room) do
    print('A door at: ', key)
  end
  direction = io.read()

  if cur_room[direction] ~= nil then
    room = cur_room[direction]
  else
    print('invalid room')
  end
end

print('Congratulations, you won!')

-- 4.5

-- Likely because it doesn't want horribly spaghettic code. 
-- More realistically, probably a limitation due to the way chunks processed.
-- Would definitely be horrible if allowed.

-- 4.6

--



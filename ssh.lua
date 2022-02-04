mess = "no"
local serv = false
local term = require("term")
term.clear() 
ar = {}
local component = require("component")
local event = require("event")
local m = component.modem -- get primary modem component
m.open(123)
m.open(952)
m.broadcast(951, "server conect")
print("conecting to server (try 1/2)")
local _, _, fromm, port, _, mess = event.pull(5, "modem_message")
m.close()
m.open(923)
if mess == nil then
print("conecting to server (try 2/2)")
m.close()
m.open(952)
m.broadcast(951, "server conect")
local _, _, from, port, _, mess = event.pull(5, "modem_message")
print(mess)
if mess == "on" then serv = true
end
end
::onn::
if mess == "on" then
  local _, _, fromm, port, _, message = event.pull(1, "modem_message")
serv = true
  print("conected")
term.clear()
print(message)
end
m.close()
m.open(123)
m.open(952)
::start::
while serv do
  local w, h = term.getViewport()
  local x, y = term.getCursor()
  print(">>")
  x = x + 2
  if y == h then
  y = y - 1
  end
  term.setCursor(x, y)
  com = term.read(ar)
  if com == "exit\n" then
    serv = false
    goto start
  end
  m.send(fromm, 951, "ping")
  local _, _, from, port, _, message = event.pull(1, "modem_message")
  if message == "on" then
    m.send(fromm, 321, com)
    local t = true
  while t  do
  local _, _, from, port, _, message = event.pull("modem_message")
  if message == "end command" then
  local t = false
  goto start
  end
  print(tostring(message))
  end
  else
print("lost conection")
  end
end
::eof::
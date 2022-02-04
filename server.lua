local computer = require("computer")
local term = require("term")
term.clear()
print("ssh server")
local ram = computer.totalMemory() / 1024
while true do
::start::    
local component = require("component")
local event = require("event")
local shell =require("shell")
local m = component.modem -- get primary modem component
m.open(321)
m.open(951)
-- Wait for a message from another network card.
local _, _, from, port, _, message = event.pull("modem_message")
ffrom = from
if from == "uuid" then
from = test
end
print(from .." "..tostring(message))
if port == 951 then
m.send(from, 952, "on")
if message == "server conect" then
os.sleep(0.1)
m.send(from, 923, _OSVERSION .. " ("..ram.."k RAM)")
end
goto start
end
shell.execute(message)
m.send(from, 123, "end command")
end
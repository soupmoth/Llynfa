--Load APIs
network = require("network")

--This needs to be done in a better way.
constants = require("constants")


--Initialise
rednet.open("top")
print("Modem Opened.")
serverID = rednet.lookup(SERVER_PROTOCOL)
--/Send


function input()
  


end


rednet.send(serverID, "Scrimblino", ORDER_PROTOCOL)

--[[
while true do

  --dispatch coroutines

  parallel.waitForAll(input, network.listen)




end
--]]
--Load APIs
network = require("network")

--This needs to be done in a better way.
constants = require("constants")

--Initialise
rednet.open("top")
print("rednet open.")

--/Send
serverID = rednet.host(SERVER_PROTOCOL, "Logistics Server")


function main()
  



end


--Recv
while true do

  --dispatch coroutines

  parallel.waitForAll(main, listen)




end
--/Recv
sendChan = 100
recvChan = 100

--Send
local data = "Hello"
modem = peripheral.find("modem") or error("No modem attached", 0)
modem.open(recvChan)
print(modem.isOpen(recvChan))
modem.transmit(sendChan,recvChan,data)
--/Send

--Recv
while true do
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
  print(event)
  if event == "modem_message" and replyChannel == recvChan then
        print(message)
  end
end
--/Recv



function order(id, message)


    print("Order Logic!!!!!!!")

end



function listen()
    while true do
        local id, message, protocol = rednet.receive()

        --This 
        if protocol == ORDER_PROTOCOL then
            rednet.send(id, "Order successfully received", ORDER_PROTOCOL)
            order(id, message)
        end

    end
end



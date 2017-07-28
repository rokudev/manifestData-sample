'* Copyright (c) 2017 Roku, Inc. All rights reserved.
'* This software and any compilation or derivative thereof is,
'* and shall remain, the proprietary information of Roku, Inc. and
'* is highly confidential in nature. Reproduction in whole or in part
'* is prohibited without the prior written consent of Roku, Inc.
'*
'* Under no circumstance may this software or any derivative thereof be
'* combined with any third party software, including open source software,
'* without the written permission of the Copyright owner.
'
' File: main.brs
'

' This is the function called by the Roku device to start this channel
sub Main()
    print chr(10) + "======================== CHANNEL STARTING =========================" + chr(10)

    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    scene = screen.CreateScene("MainScene")
    screen.show()

    while(true)
        msg = wait(0, m.port)
        ' print "msg: " + roToString(msg)
	    msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub


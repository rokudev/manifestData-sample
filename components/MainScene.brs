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
' File: MainScene.brs
'

function init()
    print "=================== UI STARTING =================="
    print m.top.subType() + ".init()"

    m.top.findNode("sampleVideo").setFocus(true)

end function

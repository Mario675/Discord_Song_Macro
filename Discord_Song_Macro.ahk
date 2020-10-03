#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

if ahk_exe Discord.exe !Exist
{
    TrayTip, Song_macro, Please Open Discord to continue, 3,
    exitapp
}


ControlFocus, , ahk_exe discord.exe,

;===================================
;KeyFuncLoops

;DurationBetween allows you set the speed of the buttons that you press in your play keys.

EnterDiscord()
{
    send !?
    sleep 100
    return
}





leftup(Looptimes)
{
    global DurationBetween
    loop Looptimes
    {
        send left up
    }

    return
}

righttopdown(Looptimes)
{
    global DurationBetween
    loop Looptimes
    {
        sleep DurationBetween
        send right
        sleep DurationBetween
        send up
        sleep DurationBetween
        send down
    }

    return
}

leftdown(Looptimes)
{
    global DurationBetween
    loop Looptimes
    {
        sleep DurationBetween
        send left
    }
}






;===================================------


;===================================
;HOTKEYS

DurationBetween = 1000 ;Make sure variable is defined before use. 

!1::


EnterDiscord()
DurationBetween = 1000
leftup(2)
leftdown(1)
leftup(1)

return

!2::

return
!3::

return
!4::

return
!x::
Exitapp


;etc
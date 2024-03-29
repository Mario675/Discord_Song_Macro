#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

!Esc::
{
    ExitApp
}

ControlFocus, , ahk_exe discord.exe,

arrow_loop(arrow, amount, delay)
{
    switch arrow
    {
        case "up":
            loop % amount
            {
                send {up}
                sleep delay
            }

        case "down":
            loop % amount
            {
                send {down}
                sleep delay
            }

        case "left":
            loop % amount
            {
                send {left}
                sleep delay
            }

        case "right":
            loop % amount
            {
                send {right}
                sleep delay
            }
    
    }
}

class preset
{
    one()
    {
        wait_var := 110

        loop 3
        {
            arrow_loop("right", 2, wait_var)
            arrow_loop("up", 1, wait_var)
            arrow_loop("down", 2, wait_var)
            arrow_loop("left", 1, wait_var)

            wait_var -= 5
        }

        arrow_loop("right", 1, wait_var)
    }

    two()
    {
        wait_var := 110

        loop 3
        {
            arrow_loop("down", 2, wait_var)
            arrow_loop("up", 1, wait_var)
            arrow_loop("right", 2, wait_var)
            arrow_loop("left", 1, wait_var)

            ; wait_var -= 5
        }
        arrow_loop("down", 2, wait_var)
        arrow_loop("up", 1, wait_var)
        arrow_loop("right", 1, wait_var)
    }

    three()
    {
        wait_var := 110

        loop 3
        {
            arrow_loop("left", 1, wait_var)
            arrow_loop("up", 1, wait_var)
            arrow_loop("down", 1, wait_var)
            arrow_loop("up", 1, wait_var)

            wait_var -= 5
        }
    }
}

^Numpad1::
    preset.two()
    sleep 500
    preset.one()

return

^Numpad2::
    preset.three()
return
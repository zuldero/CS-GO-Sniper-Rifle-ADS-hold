!s::Suspend
#IfWinActive, Counter-Strike: Global Offensive - Direct3D 9

$*RButton::
    Scope := CheckScope()
    while (GetKeyState("RButton", "P") = 1)
    {
        Scope := CheckScope()
        if (Scope <> "0x000000")
        {
            Send {Blind}{RButton}
        }
    }
return

$*RButton up::
    Scope := CheckScope()
    while (Scope = "0x000000")
    {
        if (GetKeyState("RButton", "P") = 0)
        {
            Send {Blind}{RButton}
            Scope := CheckScope()
        }
    }
return

~*LButton::
    Scope := CheckScope()
    If (Scope = "0x000000")
    {
        sleep 30
        Send {Blind}{3}
        sleep 1
        Send {Blind}{1}
    }   
return



CheckScope()
{
    PixelGetColor, Pixel1, 640, 360
    PixelGetColor, Pixel4, 4480, 800
    if (Pixel1 = 0x000000 && Pixel4 = 0x000000)
        return 0x000000
    else
        return ""
}

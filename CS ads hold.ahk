!s::Suspend

#IfWinActive, Counter-Strike: Global Offensive - Direct3D 9
{
	$*RButton::
		Send {Blind}{RButton}
		PixelGetColor, Scope, 640, 720
		return

	$*RButton up::
		if (Scope = "0x000000")
		{
			Send {Blind}{3}
			sleep 1
			Send {Blind}{1}
			return
		}

	$*R::	
	If (GetKeyState("RButton", "P") = 1)
	{
		Send {Blind}{RButton}
		PixelGetColor, Scope, 640, 720
		return
	}
	return
}
!s::Suspend

#IfWinActive, Counter-Strike: Global Offensive - Direct3D 9
{
	~*LButton::
		If (GetKeyState("RButton", "P") = 1)
		{
			sleep 30
			Send {Blind}{3}
			sleep 1
			Send {Blind}{1}
			PixelGetColor, Scope, 640, 720
			while (Scope <> "0x000000")
			{
				PixelGetColor, Scope, 640, 720
				if (GetKeyState("RButton", "P") = 1)
				{
					Send {Blind}{RButton}
					sleep 50
				}
			}
		}	
	return

	$*RButton::
		PixelGetColor, Scope, 640, 720
		while (Scope <> "0x000000")
		 {
			PixelGetColor, Scope, 640, 720
			if (GetKeyState("RButton", "P") = 1)
			{
				Send {Blind}{RButton}
				sleep 50
			}
		 }
	return
  
	$*RButton up::
		PixelGetColor, Scope, 640, 720
		while (GetKeyState("RButton", "P") = 0)				 
		{
			If (Scope = "0x000000")
			{
				Send {Blind}{RButton}
				Sleep 50
				PixelGetColor, Scope, 640, 720
			}
		}
	return
}

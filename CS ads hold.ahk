!s::Suspend

#IfWinActive, Counter-Strike: Global Offensive - Direct3D 9
{
	$*RButton::
		PixelGetColor, Scope, 640, 720
		while (GetKeyState("RButton", "P") = 1)
		 {
			PixelGetColor, Scope, 640, 720
			if (Scope <> "0x000000")
			{
				Send {Blind}{RButton}
			}
		 }
	return
  
	$*RButton up::
		PixelGetColor, Scope, 640, 720
		while (Scope = "0x000000")
		{
			if (GetKeyState("RButton", "P") = 0)
			{
				Send {Blind}{RButton}
				PixelGetColor, Scope, 640, 720
			}
		}
	return

	~*LButton::
		PixelGetColor, Scope, 640, 720
		If (Scope = "0x000000")
		{
			sleep 30
			Send {Blind}{3}
			sleep 1
			Send {Blind}{1}
		}	
	return
}
			Send {Blind}{1}
		}	
	return
}

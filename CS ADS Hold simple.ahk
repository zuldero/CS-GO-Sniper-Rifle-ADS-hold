#IfWinActive, Counter-Strike: Global Offensive - Direct3D 9
{
$*RButton::
Send {Blind}{RButton}
return

$*RButton up::
Send {Blind}{RButton up}
return

~*LButton::
sleep 30
Send {Blind}{3}
sleep 1
Send {Blind}{1}
return
}

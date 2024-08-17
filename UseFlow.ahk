#Requires AutoHotkey v2.0
LauncherHotkey := "!{F24}" ; Alt+F24
; Disable Windows key opening Start menu
~LWin::Send("{Blind}{vk07}")
; Custom behavior when Windows key is released
LWin Up:: {
if (A_PriorKey = "LWin") {
Send(LauncherHotkey)
}
}
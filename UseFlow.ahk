#Requires AutoHotkey v2.0
; Source: https://old.reddit.com/r/FlowLauncher/comments/110uc4t/windows_key_to_open_flow_with_autohotkey_script/
LauncherHotkey := "!{F24}" ; Alt+F24
; Disable Windows key opening Start menu
~LWin::Send("{Blind}{vk07}")
; Custom behavior when Windows key is released
LWin Up:: {
if (A_PriorKey = "LWin") {
Send(LauncherHotkey)
}
}

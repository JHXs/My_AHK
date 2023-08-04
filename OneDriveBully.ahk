/*
 * @Author: ikun.ji
 * @Description: OneDriveBully脚本，解决onedrive文件夹使用mklink命令不自动同步的问题
*/

#SingleInstance Force

bully() {
    TimeString := FormatTime(A_Now, "yyyyMMdd-HHmmss")
    FileName := "F:\OneDrive\OneDriveBully_SyncTempFile-*.txt"
    NewFileName := "F:\OneDrive\OneDriveBully_SyncTempFile-" . TimeString . ".txt"
    FileMove FileName, NewFileName
    return
}

HotIfWinActive("ahk_exe explorer.exe")   ;   在桌面可手动同步
Hotkey("~^+s", onebully)  ; ~^+s Ctr + Shift + s快捷键手动同步
onebully(ThisHotkey) {
    bully()
}

; bully()
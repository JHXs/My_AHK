/*
 * @Author: ikun.ji
 * @Description: OneDriveBully脚本，解决onedrive文件夹使用mklink命令不自动同步的问题
*/

#SingleInstance Force

bully() {
    TimeString := FormatTime(A_Now, "yyyyMMdd-HHmmss")
    FileName := "D:\Library\OneDrive\OneDriveBully_SyncTempFile-*.txt"
    NewFileName := "D:\Library\OneDrive\OneDriveBully_SyncTempFile-" . TimeString . ".txt"
    FileMove FileName, NewFileName
    return
}

HotIfWinActive("ahk_exe explorer.exe")   ;   在桌面可手动同步
Hotkey("~^+s", onebully)  ; ~^+s Ctr + Shift + s快捷键手动同步
onebully(ThisHotkey) {
    bully()
}

SetTimer(bully, 30 * 60 * 1000) ; 设置每30min自动同步onedrive，也可在桌面手动使用`Ctr`+`Shit`+`s`同步(热键定义在OneDriveBully.ahk中)
; bully()
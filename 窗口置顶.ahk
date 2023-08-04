;==================================================
;** 快捷键 Win+ESC 使当前窗口置顶/取消置顶
;==================================================
#Esc::{
    title := WinGetTitle("A")
    WinSetAlwaysOnTop -1, title
    getTop := WinGetExStyle("A")
    ; TrayTip "Multiline`nText", "My Title", "Iconi Mute"
    if (getTop & 0x8)
        TrayTip "已置顶", title, 1 16
    else
        TrayTip "取消置顶", title, 1 16
    return
}

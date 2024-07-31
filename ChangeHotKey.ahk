;===========HotKeylib.ahk===============
;定义热键脚本
;==========================================
; #v::^`
#s::^F1

; 加减亮度热键，又alt+F12/F11
>!F12:: Run "D:\Program\Scoop\apps\clickmonitorddc\current\ClickMonitorDDC.exe b +5"
>!F11:: Run "D:\Program\Scoop\apps\clickmonitorddc\current\ClickMonitorDDC.exe b -5"
    
; 映射ctr + win + 鼠标侧键 = ctr + Win + 方向键
^#XButton1::
{
    Send("^#{Left}") ; 发送 Ctrl + Win + Left
    Return
}

^#XButton2::
{
    Send("^#{Right}") ; 发送 Ctrl + Win + Left
    Return
}

#Include Clash.service.ahk

; 获取命令行传递的参数
param := A_Args[1]

if (param == "-sub")
    sub_dl()
else if (param == "-run")
    start_clash()
else if (param == "-stop")
    close_clash()
else if (param == "-geo")
    Update_GeoX()
else MsgBox("无效的参数")
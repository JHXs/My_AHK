#Include Clash.service.ahk

; 获取命令行传递的参数
param := A_Args[1] ;第一个参数选项
secret := A_Args[2] ; 第二个参数密码

if (param == "-sub")
    sub_dl(secret)
else if (param == "-run")
    start_clash()
else if (param == "-stop")
    close_clash()
else if (param == "-geo")
    Update_GeoX(secret)
else MsgBox("无效的参数")
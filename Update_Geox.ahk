#Requires AutoHotkey v2.0

Auto_Update_Geox() {
    run('D:\Program\Scoop\apps\powershell-preview\current\pwsh.exe C:\Users\ikun.ji\.config\clash\Scrips\Update_Geox.ps1', , "Hide",)
}

SetTimer(Auto_Update_Geox, 7*24*60*60*1000) ; 设置每7*24h自动更新

; Auto_Update_Geox()
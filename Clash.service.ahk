;; 启动clash函数
start_clash() {
    if !(ProcessExist("clash.exe"))
        run('*RunAs D:\Program\Scoop\apps\powershell-preview\current\pwsh.exe C:\Users\jhx_pc\.config\clash\Scrips\Start_Clash.ps1', , "Hide", &ClashPID)
    ; MsgBox(ClashPID)
    if(ProcessExist("clash.exe")) {
        Sleep(500)
        if (ProcessExist(ClashPID)) {
            ProcessClose(ClashPID) ; 关闭启动的pwsh进程
            ; MsgBox("closed: " . ClashPID, "start_clash")
        }
    }
}

;; 关闭clash函数
close_clash() {
    if (ProcessExist("clash.exe"))
        ProcessClose("clash.exe")
}

;; 下载订阅配置文件
sub_dl() {
    ; 订阅链接
    sub_url := "https://rn.ikunji.me/d/OneDrive/%E5%BA%94%E7%94%A8/tz_config/config.yaml?sign=Ui_31U_lG69MyAyPFLavSHeeMn_mKxijvt-hicNlR28=:0"
    path := "C:\Users\jhx_pc\.config\clash\config.yaml"
    Download(sub_url, path)
}

;; 更新GeoX文件函数
Update_GeoX() {
    run('D:\Program\Scoop\apps\powershell-preview\current\pwsh.exe C:\Users\jhx_pc\.config\clash\Scrips\Update_Geox.ps1', , "Hide", &Update_GeoX_PID)
}
;; 启动clash函数
start_clash() {
    if !(ProcessExist("clash.exe"))
        Run('*RunAs D:\Program\Scoop\shims\clash.exe -d C:\Users\jhx_pc\.config\clash\', , "Hide", &ClashPID)
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
    ; 定义变量
    secret := "ikunjihaha"
    controllerApi := "127.0.0.1:8090"
    ; 初始化HTTP请求对象
    http := ComObject("WinHttp.WinHttpRequest.5.1")
    ; 设置HTTP方法和目标URL
    http.Open("POST", "http://" controllerApi "/configs/geo", false)
    ; 设置自定义请求头
    http.SetRequestHeader("Authorization", "Bearer " secret)
    ; 发送请求
    http.Send()
    ; 关闭HTTP请求对象
    http := ""
}
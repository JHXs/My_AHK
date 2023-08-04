;;;;;;;;;;;
;; 此脚本设置了一些需要周期执行的函数
;;;;;;;;;;

#Include OneDriveBully.ahk
#Include Clash.service.ahk

SetTimer(bully, 30 * 60 * 1000) ; 设置每30min自动同步onedrive，也可在桌面手动使用`Ctr`+`Shit`+`s`同步(热键定义在OneDriveBully.ahk中)
SetTimer(Update_GeoX, 7 * 24 * 60 * 60 * 1000) ; 设置每7*24h自动更新
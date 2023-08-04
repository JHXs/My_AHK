;=============openSoftware.ahk=================
;打开开机自启的软件
;==============================================
#Include Clash.service.ahk

;Listary
if !(ProcessExist("Listary.exe"))
    Run '"D:\Program\Listary\Listary.exe" "-startup"'

;Ditto
if !(ProcessExist("Ditto.exe"))
    Run "D:\Program\Scoop\apps\ditto\current\Ditto.exe"

;QQScreenShot
if !(ProcessExist("QQScreenShot.exe"))
    Run "D:\Program\Scoop\apps\QQScreenShot\current\QQScreenShot\Bin\QQScreenShot.exe"

;Trays
if !(ProcessExist("TrayS.exe"))
    Run "D:\tools\TrayS\TrayS.exe"

;clash-core
if !(ProcessExist("clash.exe"))
    start_clash()

; ;V2rayN
; if !(ProcessExist("v2rayN.exe"))
;     Run "D:\tools\v2rayN\v2rayN.exe"

; ;clash
; if !(ProcessExist("Clash Verge.exe"))
;     Run "D:\Program\Scoop\apps\clash-verge\current\Clash Verge.exe"
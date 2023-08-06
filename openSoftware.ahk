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

; ;V2rayN
; if !(ProcessExist("v2rayN.exe"))
;     Run "D:\tools\v2rayN\v2rayN.exe"

;clash
if !(ProcessExist("Clash Verge.exe"))
    Run "C:\Users\jhx_pc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Scoop Apps\Clash Verge"

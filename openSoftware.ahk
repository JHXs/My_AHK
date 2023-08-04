;=============openSoftware.ahk=================
;打开开机自启的软件
;==============================================
#Include Clash.service.ahk

;Listary
if !(ProcessExist("Listary.exe"))
    run '"D:\Program\Listary\Listary.exe" "-startup"'

;Ditto
if !(ProcessExist("Ditto.exe"))
    run "D:\Program\Scoop\apps\ditto\current\Ditto.exe"

;QQScreenShot
if !(ProcessExist("QQScreenShot.exe"))
    run "D:\Program\Scoop\apps\QQScreenShot\current\QQScreenShot\Bin\QQScreenShot.exe"

;Trays
if !(ProcessExist("TrayS.exe"))
    run "D:\tools\TrayS\TrayS.exe"

;clash-core
if !(ProcessExist("clash.exe"))
    start_clash()

; ;V2rayN
; if !(ProcessExist("v2rayN.exe"))
;     run "D:\tools\v2rayN\v2rayN.exe"

; ;clash
; if !(ProcessExist("Clash Verge.exe"))
;     run "D:\Program\Scoop\apps\clash-verge\current\Clash Verge.exe"
;=============openSoftware.ahk=================
;打开开机自启的软件
;==============================================

;Listary
if !(ProcessExist("Listary.exe"))
    run '"D:\Program\Listary\Listary.exe" "-startup"'

; ;Ditto
; if !(ProcessExist("Ditto.exe"))
;     run "D:\Program\Scoop\apps\ditto\current\Ditto.exe"

; ;QQScreenShot
; if !(ProcessExist("QQScreenShot.exe"))
;     run "D:\Program\Scoop\apps\QQScreenShot\current\QQScreenShot\Bin\QQScreenShot.exe"

; ;Trays
; if !(ProcessExist("TrayS.exe"))
;     run "D:\PortableProgram\TrayS\TrayS.exe"

; ;V2rayN
; if !(ProcessExist("v2rayN.exe"))
;     run "D:\PortableProgram\v2rayN\v2rayN.exe"

;clash
if !(ProcessExist("Clash Verge.exe"))
    run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Clash Verge\Clash Verge"

; ;OneDrive
if !(ProcessExist("OneDrive.exe"))
    run "C:\Users\ikun.ji\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive"
    ; run "D:\Library\appLinks\OneDrive"


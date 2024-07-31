#Requires AutoHotkey v2.0

; Press Ctrl+Alt+N to create a new text file in the current directory

^!n::
{
    FileAppend "", A_WorkingDir . "\new_file.txt"
    return
}


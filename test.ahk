/*
 * @Author: ikun.ji
 * @Description: 测试文件，测试各种脚本代码
*/
; 检测Ctrl和Win键是否被按下
#Requires AutoHotkey v2.0

^#XButton1::
{
    Send("^#{Left}") ; 发送 Ctrl + Win + Left
    Return
}

^#XButton2::
{
    Send("^#{Right}") ; 发送 Ctrl + Win + Left
    Return
}

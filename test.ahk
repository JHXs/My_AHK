/*
 * @Author: ikun.ji
 * @Description: 测试文件，测试各种脚本代码
*/
controllerApi := "127.0.0.1: 8090"
secret := "ikunjihaha"

    postData := "{" "path" ": " "" ", " "payload" ": " "" "}" ; 要发送的POST数据
    ; 初始化HTTP请求对象
    http := ComObject("WinHttp.WinHttpRequest.5.1")
    ; 设置HTTP方法和目标URL
    http.Open("PUT", "http://" controllerApi "/configs?force=true", false)
    ; 设置自定义请求头
    http.SetRequestHeader("Authorization", "Bearer " secret)
    http.SetRequestHeader("Content-Type", "application/json")
    ; 发送请求
    http.Send(postData)
    ; 关闭HTTP请求对象
    http := ""
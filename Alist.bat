@set iasver=0.0.7
@setlocal DisableDelayedExpansion
@echo off
:MainMenu
cls
title  Alist脚本服务_sky制作 v%iasver%
echo:
echo:
echo:
echo:
echo:
echo:
echo:            ___________________________________________________ 
echo:                                                               
echo:               [1] 开始Alist服务
echo:               [2] 重启Alist服务
echo:               [3] 结束Alist服务
echo:               [4] 打开Alist网页
echo:               [5] 打开Alist管理
echo:               [6] 设置Alist密码
echo:               [7] 查看Alist项目 
echo:               [8] 进入Alist官网
echo:               [0] 退出
echo:            ___________________________________________________
echo:         
echo:         制作^ By sky
echo:         
echo:用键盘输入完后,请按下回车键！
echo:输入键盘上的菜单选项 [1,2,3,4,5,6,7,8,0]
echo: 
set choice=0
set /p choice=选择
if "%choice%"=="0" taskkill -f -t -im alist.exe
if "%choice%"=="0" rmdir /s /q data
if "%choice%"=="0" rmdir /s /q daemon
if "%choice%"=="0" exit /b
if "%choice%"=="1" alist.exe start
if "%choice%"=="2" alist.exe restart
if "%choice%"=="3" alist.exe stop
if "%choice%"=="4" start http://localhost:5244
if "%choice%"=="5" start http://localhost:5244/@manage
if "%choice%"=="6" goto :passworld
if "%choice%"=="7" start https://github.com/alist-org/alist
if "%choice%"=="8" start https://alist.nn.ci/zh/
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:passworld
cls
echo:   
echo: 
echo:
echo: 
echo:       
echo:                      欢迎进入Alist密码设置
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 随机设置Alist密码
echo:               [2] 自定义设置Alist密码
echo:               [3] 将Alist密码设置为admin
echo:               [0] 返回主菜单
echo:            ___________________________________________________
echo:         
echo:输入键盘上的菜单选项 [1,2,3,0]
echo: 
set choice=0
set /p choice=选择
if "%choice%"=="1" alist admin random
if "%choice%"=="2" goto :newpassworld
if "%choice%"=="3" alist admin set admin
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:newpassworld
echo:请输入你需要设置的密码
set choice=0
set /p new passworld=
alist admin set "%new passworld%"
ping 127.0.0.1 -n 2 > nul
goto :MainMenu




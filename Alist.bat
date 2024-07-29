@set iasver=0.0.1
@setlocal DisableDelayedExpansion
@echo off
:MainMenu
cls
title  Alist脚本服务_sky制作 
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
echo:               [0] 退出
echo:            ___________________________________________________
echo:         
echo:         制作^ By sky
echo:         
echo: 输入键盘上的菜单选项 [1,2,3,4,5,6,0]"
choice /C:1234560 /N
set _erl=%errorlevel%

if %_erl%==7 exit /b
if %_erl%==6 alist admin set admin
if %_erl%==5 start http://localhost:5244/@manage
if %_erl%==4 start http://localhost:5244
if %_erl%==3 alist.exe stop
if %_erl%==2 alist.exe restart
if %_erl%==1 alist.exe start
goto :MainMenu

:: 在此留下空行

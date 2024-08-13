@set version=0.0.9
@setlocal DisableDelayedExpansion
@echo off
:MainMenu
cls
title  Alist脚本服务_sky制作 v%version%
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
echo:               [9] 查询本项目版本
echo:               [0] 退出
echo:            ___________________________________________________
echo:         
echo:         制作^ By sky
echo:         
echo:用键盘输入完后,请按下回车键！
echo:输入键盘上的菜单选项 [1,2,3,4,5,6,7,8,9,0]
echo: 
set choice=0
set /p choice=选择
if "%choice%"=="0" goto :exit
if "%choice%"=="1" goto :start
if "%choice%"=="2" goto :restart
if "%choice%"=="3" goto :stop
if "%choice%"=="4" goto :web
if "%choice%"=="5" goto :admin
if "%choice%"=="6" goto :passworld
if "%choice%"=="7" goto :github-alist
if "%choice%"=="8" goto :alist
if "%choice%"=="9" goto :version
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
if "%choice%"=="1" goto :random
if "%choice%"=="2" goto :newpassworld
if "%choice%"=="3" goto :passworld-admin
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 3 > nul
goto :passworld

:random
alist.exe admin random
ping 127.0.0.1 -n 6 > nul
goto :MainMenu

:passworld-admin
alist.exe admin set admin
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:newpassworld
echo:请输入你需要设置的密码
set choice=0
set /p new passworld=
alist.exe admin set "%new passworld%"
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:exit
cls
echo:
echo:
echo:
echo:                  是否退出本程序（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 退出本程序
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" taskkill -f -t -im alist.exe
if "%choice%"=="Y" rmdir /s /q data
if "%choice%"=="Y" rmdir /s /q daemon
if "%choice%"=="Y" exit /b
if "%choice%"=="N" goto :MainMenu
if "%choice%"=="y" taskkill -f -t -im alist.exe
if "%choice%"=="y" rmdir /s /q data
if "%choice%"=="y" rmdir /s /q daemon
if "%choice%"=="y" exit /b
if "%choice%"=="n" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :exit

:start
cls
echo:
echo:
echo:
echo:                  是否启动程序（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 启动程序
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" alist.exe start
if "%choice%"=="N" goto :MainMenu
if "%choice%"=="y" alist.exe start
if "%choice%"=="n" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :start

:stop
cls
echo:
echo:
echo:
echo:                  是否结束程序（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 结束程序
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" alist.exe stop
if "%choice%"=="N" goto :MainMenu
if "%choice%"=="y" alist.exe stop
if "%choice%"=="n" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :stop

:restart
cls
echo:
echo:
echo:
echo:                  是否重启程序（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 重启程序
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" alist.exe restart
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" alist.exe restart
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :restart

:web
cls
echo:
echo:
echo:
echo:                  是否打开Alist网页（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 打开Alist网页
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" start http://localhost:5244
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" start http://localhost:5244
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :web

:admin
cls
echo:
echo:
echo:
echo:                  是否进入Alist管理界面（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 进入Alist管理界面
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" start http://localhost:5244/@manage
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" start http://localhost:5244/@manage
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :admin

:github-alist
cls
echo:
echo:
echo:
echo:             是否查看Github上的Alist项目（Y/N）
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 查看
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" start https://github.com/alist-org/alist
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" start https://github.com/alist-org/alist
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :github-alist

:alist
cls
echo:
echo:
echo:
echo:                  是否进入Alist官网
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 进入中文官网
echo:               [2] 进入英文官网
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,2,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" start https://alist.nn.ci/zh/
if "%choice%"=="2" start https://alist.nn.ci/
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :alist

:version
cls
echo:
echo:
echo:
echo:
echo:               经过查询，本项目版本为v%version%
echo:               是否获取本项目的最新版本？
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 获取
echo:               [N] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N]
set choice=0
set /p choice=选择
if "%choice%"=="Y" goto :update
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" goto :update
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :version

:update-github
start https://github.com/skywyjk/Alist.bat
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update-gitee
start https://gitee.com/skywyjk/alist.bat
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update-github-tyro
start https://github.com/skywyjk/Alist.bat/releases
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update-gitee-tyro
start https://gitee.com/skywyjk/alist.bat/releases
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update
cls
echo:
echo:
echo:
echo:                  获取本项目的最新版本
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 进入GitHub渠道
echo:               [2] 进入Gitee渠道
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,2,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" goto :questionnaire-github
if "%choice%"=="2" goto :questionnaire-gitee
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :update

:questionnaire-github
cls
echo:
echo:
echo:
echo:                 是否对GitHub非常熟悉
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 对GitHub非常熟悉
echo:               [N] 对GitHub不太熟悉
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N,0]
set choice=0
set /p choice=选择
if "%choice%"=="Y" goto :update-github
if "%choice%"=="N" goto :update-github-tyro
if "%choice%"=="y" goto :update-github
if "%choice%"=="n" goto :update-github-tyro
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :questionnaire-github

:questionnaire-gitee
cls
echo:
echo:
echo:
echo:                 是否对Gitee非常熟悉
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] 对Gitee非常熟悉
echo:               [N] 对Gitee不太熟悉
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [Y,N,0]
set choice=0
set /p choice=选择
if "%choice%"=="Y" goto :update-gitee
if "%choice%"=="N" goto :update-gitee-tyro
if "%choice%"=="y" goto :update-github
if "%choice%"=="n" goto :update-github-tyro
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :questionnaire-gitee

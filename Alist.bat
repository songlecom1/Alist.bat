@set version=0.1.2
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
echo:               [01] 开始Alist服务
echo:               [02] 重启Alist服务
echo:               [03] 结束Alist服务
echo:               [04] 打开Alist网页
echo:               [05] 打开Alist管理
echo:               [06] 设置Alist密码
echo:               [07] 查看Alist项目 
echo:               [08] 进入Alist官网
echo:               [09] 查询Alist版本
echo:               [10] 查询本项目版本
echo:               [00] 退出
echo:            ___________________________________________________
echo:         
echo:         制作^ By sky
echo:         
echo:用键盘输入完后,请按下回车键！
echo:输入键盘上的菜单选项 [1,2,3,4,5,6,7,8,9,10,0]
echo: 
set choice=0
set /p choice=选择
if "%choice%"=="0" goto :exit
if "%choice%"=="00" goto :exit
if "%choice%"=="1" goto :start
if "%choice%"=="01" goto :start
if "%choice%"=="2" goto :restart
if "%choice%"=="02" goto :restart
if "%choice%"=="3" goto :stop
if "%choice%"=="03" goto :stop
if "%choice%"=="4" goto :web
if "%choice%"=="04" goto :web
if "%choice%"=="5" goto :admin
if "%choice%"=="05" goto :admin
if "%choice%"=="6" goto :passworld
if "%choice%"=="06" goto :passworld
if "%choice%"=="7" goto :github-alist
if "%choice%"=="07" goto :github-alist
if "%choice%"=="8" goto :alist
if "%choice%"=="08" goto :alist
if "%choice%"=="9" goto :version-alist
if "%choice%"=="09" goto :version-alist
if "%choice%"=="10" goto :version
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
echo:                  是否退出本程序
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 退出本程序
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" taskkill -f -t -im alist.exe
if "%choice%"=="1" rmdir /s /q data
if "%choice%"=="1" rmdir /s /q daemon
if "%choice%"=="1" exit /b
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :exit

:start
cls
echo:
echo:
echo:
echo:                  是否启动程序
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 启动程序
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" alist.exe start
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :start

:stop
cls
echo:
echo:
echo:
echo:                  是否结束程序
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 结束程序
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" alist.exe stop
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :stop

:restart
cls
echo:
echo:
echo:
echo:                  是否重启程序
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 重启程序
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" alist.exe restart
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :restart

:web
cls
echo:
echo:
echo:
echo:                  是否打开Alist网页
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 打开Alist网页
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" start http://localhost:5244
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :web

:admin
cls
echo:
echo:
echo:
echo:                  是否进入Alist管理界面
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 进入Alist管理界面
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" start http://localhost:5244/@manage
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :admin

:github-alist
cls
echo:
echo:
echo:
echo:             是否查看Github上的Alist项目
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 查看
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" start https://github.com/alist-org/alist
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
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
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="2" start https://alist.nn.ci/
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="2" goto :MainMenu
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
echo:               [1] 获取
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" goto :update
if "%choice%"=="0"  goto :MainMenu
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
echo:               [1] 对GitHub非常熟悉
echo:               [2] 对GitHub不太熟悉
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,2,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" goto :update-github
if "%choice%"=="2" goto :update-github-tyro
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
echo:               [1] 对Gitee非常熟悉
echo:               [2] 对Gitee不太熟悉
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,2,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" goto :update-gitee
if "%choice%"=="2" goto :update-gitee-tyro
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :questionnaire-gitee

:version-alist
cls
echo:
echo:
echo:
echo:                  是否查询Alist版本
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] 查询
echo:               [0] 返回主菜单
echo:            ___________________________________________________ 
echo:         
echo:输入键盘上的菜单选项 [1,0]
set choice=0
set /p choice=选择
if "%choice%"=="1" alist.exe version
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :version-alist


@echo off
chcp 65001
@echo off
set /p pname=-^> 请输入程序名称：
echo.
echo ============程序开始编译============
echo.
fpc ./%pname%.pas
if errorlevel 1 (
	echo 程序编译错误。不再执行程序。
	pause
	exit /b %errorlevel%
)
echo.
echo ============程序开始执行============
%pname%
echo.
echo ============程序执行完毕============
echo.
echo 按E键退出...
pause>nul
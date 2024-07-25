@echo off
:: Batch script to install necessary Python packages with logging

:: Define log file
set LOGFILE=install_log.txt

:: Function to log messages
:log
echo %DATE% %TIME%: %* >> %LOGFILE%
exit /b

:: Initialize log file
echo Installation log > %LOGFILE%
echo ================= >> %LOGFILE%

:: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and try again.
    call :log Python is not installed. Please install Python and try again.
    exit /b 1
)
call :log Python is installed.

:: Check if pip is installed
pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo pip is not installed. Attempting to install pip...
    call :log pip is not installed. Attempting to install pip...
    python -m ensurepip --default-pip
    if %errorlevel% neq 0 (
        echo Failed to install pip. Please install pip manually and try again.
        call :log Failed to install pip. Please install pip manually and try again.
        exit /b 1
    )
    call :log pip installed successfully.
) else (
    call :log pip is already installed.
)

:: Install numpy
echo Installing numpy...
call :log Installing numpy...
pip install numpy >> %LOGFILE% 2>&1
if %errorlevel% neq 0 (
    echo Failed to install numpy. Please check your network connection and try again.
    call :log Failed to install numpy. Please check your network connection and try again.
    exit /b 1
)
call :log numpy installed successfully.

:: Install matplotlib
echo Installing matplotlib...
call :log Installing matplotlib...
pip install matplotlib >> %LOGFILE% 2>&1
if %errorlevel% neq 0 (
    echo Failed to install matplotlib. Please check your network connection and try again.
    call :log Failed to install matplotlib. Please check your network connection and try again.
    exit /b 1
)
call :log matplotlib installed successfully.

:: Install scipy
echo Installing scipy...
call :log Installing scipy...
pip install scipy >> %LOGFILE% 2>&1
if %errorlevel% neq 0 (
    echo Failed to install scipy. Please check your network connection and try again.
    call :log Failed to install scipy. Please check your network connection and try again.
    exit /b 1
)
call :log scipy installed successfully.

:: Install simpy
echo Installing simpy...
call :log Installing simpy...
pip install simpy >> %LOGFILE% 2>&1
if %errorlevel% neq 0 (
    echo Failed to install simpy. Please check your network connection and try again.
    call :log Failed to install simpy. Please check your network connection and try again.
    exit /b 1
)
call :log simpy installed successfully.

echo All packages installed successfully.
call :log All packages installed successfully.
pause

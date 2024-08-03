@echo off
setlocal enabledelayedexpansion

:: Define log file
set LOGFILE=install_log.txt

:: Function to log messages
:log
echo %DATE% %TIME%: %* >> %LOGFILE%
exit /b

:: Function to check and handle errors
:check_error
if %errorlevel% neq 0 (
    echo Error occurred: %1
    call :log Error occurred: %1
    call :cleanup
    exit /b %errorlevel%
)

:: Function to clean up in case of failure
:cleanup
if exist venv (
    echo Cleaning up...
    rmdir /s /q venv
    call :log Cleaned up virtual environment.
)
goto :EOF

:: Initialize log file
echo Installation log > %LOGFILE%
echo ================= >> %LOGFILE%

:: Check if Python is installed
echo Checking if Python is installed...
python --version >nul 2>&1
call :check_error "Python is not installed. Please install Python and try again."
call :log Python is installed.

:: Check if pip is installed
echo Checking if pip is installed...
pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo pip is not installed. Attempting to install pip...
    call :log pip is not installed. Attempting to install pip...
    python -m ensurepip --default-pip
    call :check_error "Failed to install pip. Please install pip manually and try again."
    call :log pip installed successfully.
) else (
    call :log pip is already installed.
)

:: Create a virtual environment
echo Creating virtual environment...
python -m venv venv
call :check_error "Failed to create virtual environment."
call :log Virtual environment created successfully.

:: Activate the virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat
call :check_error "Failed to activate virtual environment."
call :log Virtual environment activated.

:: Upgrade pip to the latest version
echo Upgrading pip to the latest version...
pip install --upgrade pip >> %LOGFILE% 2>&1
call :check_error "Failed to upgrade pip."
call :log pip upgraded successfully.

:: Install numpy
echo Installing numpy...
call :log Installing numpy...
pip install numpy >> %LOGFILE% 2>&1
call :check_error "Failed to install numpy. Please check your network connection and try again."
call :log numpy installed successfully.

:: Install matplotlib
echo Installing matplotlib...
call :log Installing matplotlib...
pip install matplotlib >> %LOGFILE% 2>&1
call :check_error "Failed to install matplotlib. Please check your network connection and try again."
call :log matplotlib installed successfully.

:: Install scipy
echo Installing scipy...
call :log Installing scipy...
pip install scipy >> %LOGFILE% 2>&1
call :check_error "Failed to install scipy. Please check your network connection and try again."
call :log scipy installed successfully.

:: Install simpy
echo Installing simpy...
call :log Installing simpy...
pip install simpy >> %LOGFILE% 2>&1
call :check_error "Failed to install simpy. Please check your network connection and try again."
call :log simpy installed successfully.

echo All packages installed successfully.
call :log All packages installed successfully.
pause

endlocal
exit /b 0

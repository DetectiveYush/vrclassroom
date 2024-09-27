@echo off
g++ -o test1 test1.cpp -lglfw3 -lopengl32 -lgdi32 -static-libgcc -static-libstdc++ -I"C:\ProgramData\mingw64\mingw64\include" -L"C:\ProgramData\mingw64\mingw64\lib"

if %errorlevel% neq 0 (
    echo Compilation failed with error code %errorlevel%.
    pause
    exit /b %errorlevel%
)

echo Compilation successful. Executing program...
test1.exe
pause

@echo off
chcp 65001 >nul

echo === Lab1 Spring Boot Runner ===

echo Killing processes on ports 8080-8090...
for /l %%p in (8080,1,8090) do (
    for /f "tokens=5" %%a in ('netstat -aon ^| findstr :%%p ^| findstr LISTENING') do (
        echo Killing process %%a on port %%p
        taskkill /PID %%a /F >nul 2>&1
    )
)

echo Cleaning and building project...
call mvnw.cmd clean compile

echo Starting Spring Boot application...
echo Application will be available at: http://localhost:8080/poly/hello (Ctrl+Click to open)
echo Press Ctrl+C to stop

echo ==========================

call mvnw.cmd spring-boot:run

echo ==========================
echo ^> Application is running at: http://localhost:8080/poly/hello (Ctrl+Click to open)
echo ^> Press Ctrl+C to stop the application
echo ==========================

@echo off
setlocal
set "JAVA_HOME=C:\Users\PC\.jdks\jbr-21.0.11"
set "JRE_HOME="
set "CATALINA_HOME=%~dp0apache-tomcat-10.1.61\apache-tomcat-10.1.61"
set "CATALINA_BASE=%CATALINA_HOME%"
set "WEB_URL=http://localhost:8080/gara-man/frontend/module1/index.jsp"

if not exist "%JAVA_HOME%\bin\java.exe" (
    echo Khong tim thay Java tai "%JAVA_HOME%".
    pause
    exit /b 1
)
if not exist "%CATALINA_HOME%\bin\catalina.bat" (
    echo Khong tim thay Tomcat. Hay de file bat trong thu muc demo.
    pause
    exit /b 1
)

powershell.exe -NoProfile -Command "$client = New-Object Net.Sockets.TcpClient; try { $task = $client.ConnectAsync('localhost', 8080); if ($task.Wait(1000) -and $client.Connected) { exit 0 }; exit 1 } catch { exit 1 } finally { $client.Dispose() }"
if errorlevel 1 (
    echo Dang khoi dong Tomcat...
    call "%CATALINA_HOME%\bin\startup.bat"
    if errorlevel 1 (
        echo Khoi dong Tomcat that bai.
        pause
        exit /b 1
    )
)

echo Dang cho web san sang...
powershell.exe -NoProfile -Command "for ($attempt = 0; $attempt -lt 15; $attempt++) { try { $response = Invoke-WebRequest -Uri $env:WEB_URL -UseBasicParsing -TimeoutSec 2; if ($response.StatusCode -eq 200) { exit 0 } } catch { }; Start-Sleep -Seconds 1 }; exit 1"
if errorlevel 1 (
    echo Web chua mo duoc. Kiem tra cua so Tomcat va thu muc logs.
    echo Dia chi: %WEB_URL%
    pause
    exit /b 1
)

start "" "%WEB_URL%"
endlocal

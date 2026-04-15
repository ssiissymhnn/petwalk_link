@echo off
setlocal

set "HTML_PATH=d:\짓츄\바탕화면\숙대\커서\petwalk-ui.html"

rem Try Microsoft Edge (stable)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="file:///%HTML_PATH:\=/%" --window-size=420,880
  exit /b 0
)

rem Try Microsoft Edge (Program Files)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="file:///%HTML_PATH:\=/%" --window-size=420,880
  exit /b 0
)

rem Fallback: open normally
start "" "%HTML_PATH%"

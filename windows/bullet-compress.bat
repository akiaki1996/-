
ECHO OFF
chcp 65001

for %%a in (*.flv) do (ffmpeg -i %%a -vf subtitles=%%~na.ass %%~na_WithSub.mp4)

ECHO.
ECHO job done!
ECHO.
pause
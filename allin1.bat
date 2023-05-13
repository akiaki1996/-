ECHO OFF
chcp 65001
for %%a in ("*.flv") do (
ffmpeg -i "%%a" -c copy -copyts "%%~na.mp4"
del "%%~na.ts"
)

set "str= "

for /f "delims=" %%i in ('dir /b *.*') do (

set "var=%%i" & ren "%%i" "!var:%str%=!")

for %%a in (*.flv) do (ffmpeg -i %%a -vf subtitles=%%~na.ass %%~na_WithSub.mp4)





ECHO.
ECHO Job done!
ECHO.
pause
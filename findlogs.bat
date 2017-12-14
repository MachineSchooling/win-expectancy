mkdir "%userprofile%\desktop\mylogs"

for /R "C:\" %%i in (Match_*.dat) do xcopy "%%i" "%userprofile%\desktop\mylogs" /d /y /q

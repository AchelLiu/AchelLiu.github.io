@echo off
REM Windows 版本的文章可见性切换脚本

if "%~1"=="" (
    echo 用法: toggle-draft.bat 文章路径 [hide^|show]
    echo.
    echo 示例:
    echo   toggle-draft.bat content\posts\2020-02-03-note.md hide   # 隐藏文章
    echo   toggle-draft.bat content\posts\2020-02-03-note.md show   # 显示文章
    exit /b 1
)

set "FILE=%~1"
set "ACTION=%~2"

if not exist "%FILE%" (
    echo 错误: 文件不存在 - %FILE%
    exit /b 1
)

if "%ACTION%"=="hide" (
    powershell -Command "(Get-Content '%FILE%') -replace '^draft: false', 'draft: true' | Set-Content '%FILE%'"
    powershell -Command "if ((Get-Content '%FILE%' | Select-String -Pattern '^draft:' -Quiet) -eq $false) { $content = Get-Content '%FILE%'; $index = 0; for ($i=0; $i -lt $content.Length; $i++) { if ($content[$i] -match '^---' -and $i -gt 0) { $index = $i; break } }; if ($index -gt 0) { $content[$index] = 'draft: true' + [Environment]::NewLine + $content[$index]; $content | Set-Content '%FILE%' } }"
    echo ✅ 已隐藏文章: %FILE%
) else if "%ACTION%"=="show" (
    powershell -Command "(Get-Content '%FILE%') -replace '^draft: true', 'draft: false' | Set-Content '%FILE%'"
    echo ✅ 已显示文章: %FILE%
) else (
    echo 请指定操作: hide 或 show
    exit /b 1
)

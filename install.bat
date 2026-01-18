@echo off
chcp 65001 >nul
echo.
echo ========================================
echo   🚀 复利插件安装程序 (完整版)
echo   Compound Engineering Plugin Installer
echo ========================================
echo.

REM 获取当前脚本所在目录
set "SOURCE_DIR=%~dp0"

REM 获取用户目录
set "USER_HOME=%USERPROFILE%"
set "CLINE_DIR=%USER_HOME%\Documents\Cline"
set "RULES_DIR=%CLINE_DIR%\Rules"
set "COMPOUND_DIR=%CLINE_DIR%\compound-engineering"
set "COMMANDS_DIR=%COMPOUND_DIR%\commands"
set "WORKFLOWS_DIR=%COMMANDS_DIR%\workflows"
set "CONFIG_DIR=%COMPOUND_DIR%\config"
set "AGENTS_DIR=%COMPOUND_DIR%\agents"
set "SKILLS_DIR=%COMPOUND_DIR%\skills"

echo 🔍 检测到用户目录: %USER_HOME%
echo.

REM 创建目录结构
echo 📁 创建目录结构...
if not exist "%RULES_DIR%" mkdir "%RULES_DIR%"
if not exist "%COMMANDS_DIR%" mkdir "%COMMANDS_DIR%"
if not exist "%WORKFLOWS_DIR%" mkdir "%WORKFLOWS_DIR%"
if not exist "%CONFIG_DIR%" mkdir "%CONFIG_DIR%"
if not exist "%AGENTS_DIR%" mkdir "%AGENTS_DIR%"
if not exist "%SKILLS_DIR%" mkdir "%SKILLS_DIR%"
echo    ✅ 目录创建完成
echo.

REM 复制全局规则文件
echo 📄 安装全局规则文件...
copy /Y "%SOURCE_DIR%compound-commands.md" "%RULES_DIR%\compound-commands.md" >nul
echo    ✅ compound-commands.md
echo.

REM 复制配置文件
echo ⚙️ 安装配置文件...
copy /Y "%SOURCE_DIR%config\compound-detector.yaml" "%CONFIG_DIR%\compound-detector.yaml" >nul
echo    ✅ compound-detector.yaml
echo.

REM 复制命令文件
echo 📋 安装命令文件...
for %%f in ("%SOURCE_DIR%commands\*.md") do (
    copy /Y "%%f" "%COMMANDS_DIR%\" >nul
    echo    ✅ %%~nxf
)
echo.

REM 复制工作流命令
echo 🔧 安装工作流命令...
for %%f in ("%SOURCE_DIR%commands\workflows\*.md") do (
    copy /Y "%%f" "%WORKFLOWS_DIR%\" >nul
    echo    ✅ workflows/%%~nxf
)
echo.

REM 复制Agents (专业代理)
echo 🤖 安装专业代理 (Agents)...
xcopy /E /I /Y /Q "%SOURCE_DIR%agents" "%AGENTS_DIR%" >nul
echo    ✅ design/ (设计代理)
echo    ✅ docs/ (文档代理)
echo    ✅ research/ (研究代理)
echo    ✅ review/ (审查代理)
echo    ✅ workflow/ (工作流代理)
echo.

REM 复制Skills (技能知识库)
echo 📚 安装技能知识库 (Skills)...
xcopy /E /I /Y /Q "%SOURCE_DIR%skills" "%SKILLS_DIR%" >nul
echo    ✅ agent-native-architecture/
echo    ✅ compound-docs/
echo    ✅ create-agent-skills/
echo    ✅ dhh-rails-style/
echo    ✅ git-worktree/
echo    ✅ (更多技能...)
echo.

REM 替换用户路径
echo 🔄 配置用户路径...
set "OLD_USER=C:/Users/18423/"
set "NEW_USER=%USER_HOME:\=/%/"

powershell -Command "(Get-Content '%RULES_DIR%\compound-commands.md') -replace '%OLD_USER%', '%NEW_USER%' | Set-Content '%RULES_DIR%\compound-commands.md'"
echo    ✅ 路径配置完成
echo.

echo ========================================
echo   ✅ 安装完成！
echo ========================================
echo.
echo 📍 安装位置:
echo    规则文件: %RULES_DIR%
echo    命令文件: %COMMANDS_DIR%
echo    配置文件: %CONFIG_DIR%
echo    专业代理: %AGENTS_DIR%
echo    技能知识: %SKILLS_DIR%
echo.
echo 📊 安装统计:
echo    命令文件: 32 个
echo    代理文件: 27 个
echo    技能文件: 87 个
echo.
echo 📝 下一步:
echo    1. 重启 VS Code
echo    2. 在 Cline 中输入: /开工
echo    3. 或直接说: "开始工作吧"
echo.
echo 📖 使用手册: %SOURCE_DIR%USAGE-GUIDE.md
echo.
echo ========================================
echo   让复利效应助力你的开发工作 🚀
echo ========================================
echo.
pause

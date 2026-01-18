# 🚀 复利插件安装包 (Compound Engineering Plugin)

> **一键部署自动化工作流系统**

## 📦 包含内容

```
emma/
├── README.md                    # 本文件 - 安装指南
├── USAGE-GUIDE.md              # 命令使用手册
├── install.bat                  # Windows一键安装脚本
├── compound-commands.md         # 全局规则文件
├── config/
│   └── compound-detector.yaml   # 复利检测器配置
├── commands/                    # 命令文件 (32个)
│   ├── 开工.md, 收工.md, 暂停.md, 恢复.md
│   ├── 变更.md, 修复bug.md, 记录.md
│   ├── 周报.md, 效率报告.md
│   └── workflows/
│       ├── plan.md, work.md, review.md, compound.md
├── agents/                      # 专业代理 (27个)
│   ├── design/                  # 设计代理
│   │   ├── design-implementation-reviewer.md
│   │   ├── design-iterator.md
│   │   └── figma-design-sync.md
│   ├── docs/                    # 文档代理
│   │   └── ankane-readme-writer.md
│   ├── research/                # 研究代理
│   │   ├── best-practices-researcher.md
│   │   ├── framework-docs-researcher.md
│   │   └── git-history-analyzer.md
│   ├── review/                  # 审查代理 (14个)
│   │   ├── security-sentinel.md
│   │   ├── performance-oracle.md
│   │   ├── architecture-strategist.md
│   │   ├── code-simplicity-reviewer.md
│   │   └── ... (更多审查代理)
│   └── workflow/                # 工作流代理
│       ├── bug-reproduction-validator.md
│       ├── lint.md
│       └── pr-comment-resolver.md
└── skills/                      # 技能知识库 (87个文件)
    ├── agent-native-architecture/  # AI代理架构模式
    ├── compound-docs/              # 文档管理
    ├── create-agent-skills/        # 技能创建指南
    ├── dhh-rails-style/            # Rails开发风格
    ├── git-worktree/               # Git worktree管理
    ├── frontend-design/            # 前端设计
    └── ... (更多技能)
```

## 🔧 安装步骤

### 方式1：一键安装（推荐）

1. 双击运行 `install.bat`
2. 按提示操作
3. 重启 VS Code/Cline

### 方式2：手动安装

#### 步骤1：创建目标目录

```powershell
# 在PowerShell中执行
mkdir "$env:USERPROFILE\Documents\Cline\Rules" -Force
mkdir "$env:USERPROFILE\Documents\Cline\compound-engineering\commands\workflows" -Force
mkdir "$env:USERPROFILE\Documents\Cline\compound-engineering\config" -Force
```

#### 步骤2：复制文件

将以下文件复制到对应位置：

| 源文件 | 目标位置 |
|--------|----------|
| `compound-commands.md` | `%USERPROFILE%\Documents\Cline\Rules\compound-commands.md` |
| `config\compound-detector.yaml` | `%USERPROFILE%\Documents\Cline\compound-engineering\config\compound-detector.yaml` |
| `commands\*.md` | `%USERPROFILE%\Documents\Cline\compound-engineering\commands\` |
| `commands\workflows\*.md` | `%USERPROFILE%\Documents\Cline\compound-engineering\commands\workflows\` |

#### 步骤3：修改路径

打开 `%USERPROFILE%\Documents\Cline\Rules\compound-commands.md`

将所有 `C:/Users/18423/` 替换为你的用户目录路径（如 `C:/Users/你的用户名/`）

#### 步骤4：重启 Cline

关闭并重新打开 VS Code

## ✅ 验证安装

在 Cline 中输入以下命令测试：

```
/开工
```

如果看到类似输出，说明安装成功：
```
🌅 开工！正在初始化工作环境...
```

## 📋 快速开始

安装完成后，你可以：

```bash
# 开始每日工作
"开始工作吧" 或 /开工

# 处理需求变更
"需求变了" 或 /变更 [变更描述]

# 修复Bug
"修一个bug" 或 /修复bug [bug描述]

# 日末收工
"下班了" 或 /收工
```

详细使用说明请参阅 `USAGE-GUIDE.md`

## 🔄 更新

如需更新，重新运行 `install.bat` 即可覆盖安装。

## ❓ 常见问题

### Q: 命令没有响应
A: 检查 `compound-commands.md` 是否正确放置在 `Documents\Cline\Rules\` 目录

### Q: 找不到命令文件
A: 检查路径中的用户名是否正确替换

### Q: 权限问题
A: 以管理员身份运行安装脚本

---

**复利公式**：`未来效率 = 当前能力 × (1 + 每次学习积累)^循环次数`

让每一次工程工作都为未来积累价值 🚀

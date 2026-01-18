# 复利插件命令系统 (Compound Interest Plugin)

> **核心理念**：像金融复利一样，让工程知识随时间指数级增长。每解决一个问题并记录，下次解决类似问题的时间就会大幅缩短。

当用户输入以 `/` 开头的命令时，按照以下规则处理：

## 🔍 命令解析规则

1. 识别用户输入的命令格式：`/命令名 [参数]`
2. 根据下方命令表查找对应的命令文件路径
3. 读取该命令文件的完整内容
4. 将用户提供的参数替换到 `#$ARGUMENTS` 占位符位置
5. 按照命令文件中的指导执行任务

## 🌅 自动化开工命令

| 命令 | 描述 | 文件路径 |
|------|------|----------|
| `/开工` | 每日自动化工作流（增量提交模式） | `C:/Users/18423/Documents/Cline/compound-engineering/commands/开工.md` |
| `/lfg` | 全自动工程工作流 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/lfg.md` |
| `/周报` | 自动生成本周工作总结和下周计划 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/周报.md` |
| `/收工` | 日末收尾流程（保存进度、更新文档） | `C:/Users/18423/Documents/Cline/compound-engineering/commands/收工.md` |
| `/效率报告` | 生成效率分析报告，量化复利效果 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/效率报告.md` |
| `/暂停` | 保存工作进度，处理紧急任务 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/暂停.md` |
| `/恢复` | 从暂停点恢复之前的任务 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/恢复.md` |

**🗣️ 自然语言触发**: 当用户说以下内容时，自动执行对应命令：
- "开始工作吧"、"开工"、"开工了"、"Let's go" → `/开工`
- "生成周报"、"写周报"、"本周总结" → `/周报`
- "下班了"、"收工了"、"今天就到这里" → `/收工`
- "看看效率"、"效率分析" → `/效率报告`
- "有个紧急任务"、"需要先处理别的" → `/暂停`
- "继续之前的任务"、"恢复工作" → `/恢复`

## 🔧 场景化工作流

| 命令 | 描述 | 文件路径 |
|------|------|----------|
| `/修复bug` | Bug修复专用流程（复现→定位→修复→测试→记录） | `C:/Users/18423/Documents/Cline/compound-engineering/commands/修复bug.md` |
| `/变更` | 需求变更处理流程（评估→调整→记录） | `C:/Users/18423/Documents/Cline/compound-engineering/commands/变更.md` |

**🗣️ 自然语言触发**：
- "修一个bug"、"这里有个bug" → `/修复bug`
- "需求变了"、"需求调整"、"功能改了"、"老板说要改" → `/变更`

## 📚 知识复利增强

| 命令 | 描述 | 文件路径 |
|------|------|----------|
| `/记录` | 快速记录知识片段、经验教训、解决方案 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/记录.md` |

**🗣️ 自然语言触发**：
- "记一下"、"学到一个知识点"、"这个要记下来" → `/记录`

## 📋 核心工作流命令

| 命令 | 描述 | 文件路径 |
|------|------|----------|
| `/workflows:plan` | 将功能想法转化为详细实施计划 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/workflows/plan.md` |
| `/workflows:work` | 使用worktree执行计划 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/workflows/work.md` |
| `/workflows:review` | 多代理代码审查 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/workflows/review.md` |
| `/workflows:compound` | 记录学习成果形成知识复合 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/workflows/compound.md` |

## 🛠️ 实用命令

| 命令 | 描述 | 文件路径 |
|------|------|----------|
| `/changelog` | 创建变更日志 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/changelog.md` |
| `/create-agent-skill` | 创建或编辑技能 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/create-agent-skill.md` |
| `/deepen-plan` | 使用并行研究增强计划 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/deepen-plan.md` |
| `/plan_review` | 多代理计划审查 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/plan_review.md` |
| `/triage` | 问题分类和优先级排序 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/triage.md` |
| `/reproduce-bug` | 复现Bug | `C:/Users/18423/Documents/Cline/compound-engineering/commands/reproduce-bug.md` |
| `/report-bug` | 报告Bug | `C:/Users/18423/Documents/Cline/compound-engineering/commands/report-bug.md` |
| `/heal-skill` | 修复技能文档问题 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/heal-skill.md` |
| `/test-browser` | 浏览器测试 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/test-browser.md` |
| `/resolve_parallel` | 并行解决TODO注释 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/resolve_parallel.md` |
| `/resolve_pr_parallel` | 并行解决PR评论 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/resolve_pr_parallel.md` |
| `/resolve_todo_parallel` | 并行解决待办事项 | `C:/Users/18423/Documents/Cline/compound-engineering/commands/resolve_todo_parallel.md` |

## 🤖 专业代理调用

当需要使用专业代理时，读取对应的代理文件并按照其指导执行：

### 审查代理 (Review Agents)
| 代理名称 | 描述 | 文件路径 |
|----------|------|----------|
| `security-sentinel` | 安全审计和漏洞评估 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/security-sentinel.md` |
| `architecture-strategist` | 架构决策分析 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/architecture-strategist.md` |
| `performance-oracle` | 性能分析和优化 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/performance-oracle.md` |
| `code-simplicity-reviewer` | 代码简洁性审查 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/code-simplicity-reviewer.md` |
| `data-integrity-guardian` | 数据完整性检查 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/data-integrity-guardian.md` |
| `dhh-rails-reviewer` | Rails代码审查(DHH风格) | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/dhh-rails-reviewer.md` |
| `kieran-rails-reviewer` | Rails审查(Kieran风格) | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/kieran-rails-reviewer.md` |
| `kieran-python-reviewer` | Python审查 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/kieran-python-reviewer.md` |
| `kieran-typescript-reviewer` | TypeScript审查 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/review/kieran-typescript-reviewer.md` |

### 研究代理 (Research Agents)
| 代理名称 | 描述 | 文件路径 |
|----------|------|----------|
| `best-practices-researcher` | 最佳实践研究 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/research/best-practices-researcher.md` |
| `framework-docs-researcher` | 框架文档研究 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/research/framework-docs-researcher.md` |
| `git-history-analyzer` | Git历史分析 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/research/git-history-analyzer.md` |
| `repo-research-analyst` | 仓库研究分析 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/research/repo-research-analyst.md` |

### 设计代理 (Design Agents)
| 代理名称 | 描述 | 文件路径 |
|----------|------|----------|
| `design-implementation-reviewer` | 设计实现审查 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/design/design-implementation-reviewer.md` |
| `figma-design-sync` | Figma设计同步 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/design/figma-design-sync.md` |
| `design-iterator` | 设计迭代 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/design/design-iterator.md` |

### 工作流代理 (Workflow Agents)
| 代理名称 | 描述 | 文件路径 |
|----------|------|----------|
| `bug-reproduction-validator` | Bug复现验证 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/workflow/bug-reproduction-validator.md` |
| `pr-comment-resolver` | PR评论解决 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/workflow/pr-comment-resolver.md` |
| `lint` | 代码检查 | `C:/Users/18423/Documents/Cline/compound-engineering/agents/workflow/lint.md` |

## 📚 技能知识库

当需要特定领域知识时，读取技能文件：

| 技能 | 描述 | 文件路径 |
|------|------|----------|
| `agent-native-architecture` | AI代理架构模式 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/agent-native-architecture/SKILL.md` |
| `dhh-rails-style` | DHH风格Rails开发 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/dhh-rails-style/SKILL.md` |
| `create-agent-skills` | 技能创建指南 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/create-agent-skills/SKILL.md` |
| `compound-docs` | 文档和知识管理 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/compound-docs/SKILL.md` |
| `git-worktree` | Git worktree管理 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/git-worktree/SKILL.md` |
| `frontend-design` | 前端设计 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/frontend-design/SKILL.md` |
| `file-todos` | 待办事项跟踪 | `C:/Users/18423/Documents/Cline/compound-engineering/skills/file-todos/SKILL.md` |

## 🔄 执行流程

当用户输入命令时，按以下步骤执行：

1. **解析命令**: 识别命令名称和参数
2. **查找文件**: 根据命令表找到对应的.md文件
3. **读取内容**: 读取命令文件的完整指导
4. **参数替换**: 将 `#$ARGUMENTS` 替换为用户参数
5. **执行指导**: 按照文件中的步骤执行任务
6. **报告结果**: 向用户报告执行结果

## 使用示例

```
用户: /workflows:plan 实现用户登录功能

执行:
1. 读取 workflows/plan.md
2. 将"实现用户登录功能"作为feature_description
3. 按照plan.md中的指导执行规划工作流
```

```
用户: /workflows:review

执行:
1. 读取 workflows/review.md
2. 按照review.md中的指导，并行启动多个审查代理
3. 汇总审查结果
```

## 复利插件核心理念

**像复利一样积累知识：每个工程单元的工作都应该让后续工作变得更容易，而不是更困难。**

```
复利公式：未来效率 = 当前能力 × (1 + 每次学习积累)^循环次数
```

**工作流循环：** `计划 → 工作 → 审查 → 复利（记录） → 重复`

**80/20原则：** 80%时间用于规划和审查，20%用于执行

**复利效果：**
- 第1次解决问题：30分钟研究
- 第2次类似问题：5分钟（查文档）
- 第N次：2分钟（直接复用）

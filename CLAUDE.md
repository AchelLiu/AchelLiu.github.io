# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# 项目概述
这是一个基于 Hugo 的静态网站/博客，使用 "PaperMod" 主题。该站点托管在 GitHub Pages 上，地址为 https://achelliu.github.io。内容主要是中文，关注农业、农村发展和个人笔记等主题。

项目已经从 Jekyll 迁移到 Hugo，但仍保留了一些 Jekyll 相关文件。

# 关键配置文件
- `hugo.toml`：Hugo 主配置文件，包含站点元数据、主题设置和导航选项
- `config/_default/*`：Hugo 配置文件目录（如果存在）
- `themes/PaperMod/`：PaperMod 主题文件
- `content/posts/`：博客文章目录
- `.github/workflows/deploy.yml`：GitHub Actions 部署配置

# 内容结构
- `content/`：Hugo 内容目录
  - `content/posts/`：博客文章，使用 Markdown 格式和 YAML 前置数据
- `themes/`：Hugo 主题目录
- `assets/`：静态资源（CSS、JS、图片等）
- `static/`：直接复制到站点根目录的静态文件（如果存在）

# 主题特性
PaperMod 主题支持：
- 响应式设计
- 深色/浅色主题切换
- 文章目录
- 搜索功能
- 社交媒体链接
- 代码高亮
- SEO 优化

# 开发工作流程
1. 使用 Markdown 编写文章，保存在 `content/posts/` 目录下
2. 使用 Hugo 本地预览：`hugo server`
3. 提交更改到 master 分支，GitHub Actions 会自动部署到 GitHub Pages
4. 通过 `hugo.toml` 进行主题和站点配置

# 常用命令
- `hugo server`：本地启动开发服务器，实时预览网站
- `hugo`：构建静态网站到 `public/` 目录
- `hugo server --disableFastRender`：禁用快速渲染的本地服务器（用于调试）

# 部署流程
项目使用 GitHub Actions 自动部署：
1. 推送更改到 master 分支
2. GitHub Actions workflow (`.github/workflows/deploy.yml`) 自动触发
3. 使用 Hugo 构建网站
4. 部署到 GitHub Pages

# 重要说明
- 文章按时间顺序组织在 `content/posts` 目录中，文件名格式为 `YYYY-MM-DD-title.md`
- 站点使用 Hugo 的内置功能进行 SEO 优化
- 主题配置在 `hugo.toml` 文件中
- 本地开发需要安装 Hugo（推荐版本 0.152.1 或更高）
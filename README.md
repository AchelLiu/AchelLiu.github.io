<div align="center">

# 🌿 Achel's World

[![Website](https://img.shields.io/website?down_color=red&down_message=offline&up_color=%2385dfc8&up_message=online&url=https%3A%2F%2Fachelliu.github.io)](https://achelliu.github.io)
[![Hugo](https://img.shields.io/badge/Hugo-0.152.1-ff4088?logo=hugo&logoColor=white)](https://gohugo.io)
[![Theme](https://img.shields.io/badge/Theme-PaperMod-blue)](https://github.com/adityatelange/hugo-PaperMod)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Commits](https://img.shields.io/github/commit-activity/t/AchelLiu/AchelLiu.github.io)](https://github.com/AchelLiu/AchelLiu.github.io/commits/master)

*一个专注于技术、思考与成长的个人博客*

[🌐 在线访问](https://achelliu.github.io) • [📝 文章列表](https://achelliu.github.io/posts/) • [🔍 搜索](https://achelliu.github.io/search/)

</div>

---

## ✨ 特性

- 🎨 **独特设计** - 采用绿色自适应边框设计，90% 内容宽度，视觉舒适
- 📱 **完全响应式** - 完美适配桌面、平板和移动设备
- 🌓 **深色模式** - 支持浅色/深色主题自动切换
- ⚡ **性能优化** - 基于 Hugo 静态生成，加载速度极快
- 🔍 **全文搜索** - 内置搜索功能，快速查找内容
- 📊 **阅读体验** - 显示阅读时间、代码高亮、目录导航
- 📡 **RSS 订阅** - 支持 RSS 订阅，不错过每一篇更新

## 🛠️ 技术栈

- **静态网站生成器**: [Hugo](https://gohugo.io) v0.152.1 Extended
- **主题**: [PaperMod](https://github.com/adityatelange/hugo-PaperMod)
- **部署**: GitHub Pages + GitHub Actions
- **样式**: 自定义 CSS（绿色边框设计）
- **语言**: Markdown + YAML

## 🚀 快速开始

### 前置要求

- [Hugo Extended](https://gohugo.io/installation/) v0.152.1+
- [Git](https://git-scm.com/)

### 本地运行

```bash
# 克隆仓库（包含子模块）
git clone --recursive https://github.com/AchelLiu/AchelLiu.github.io.git
cd AchelLiu.github.io

# 启动开发服务器
hugo server

# 访问 http://localhost:1313
```

### 构建生产版本

```bash
# 构建静态文件到 public/ 目录
hugo --gc --minify
```

## 📁 项目结构

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions 自动部署
├── assets/
│   └── css/
│       └── extended/
│           └── custom.css      # 自定义样式（绿色边框）
├── content/
│   └── posts/                  # 博客文章目录
├── themes/
│   └── PaperMod/              # PaperMod 主题（Git 子模块）
├── hugo.toml                   # Hugo 主配置文件
└── README.md                   # 本文件
```

## 🎨 自定义设计

本站点采用独特的绿色边框设计：

- **背景色**: `#85dfc8` 薄荷绿
- **内容宽度**: 90%（左右各 5% 边距）
- **圆角**: 8px
- **阴影**: 轻微阴影增强层次感

自定义样式位于 `assets/css/extended/custom.css`，可根据个人喜好调整。

## 📝 写作工作流

```bash
# 创建新文章
hugo new posts/my-new-post.md

# 编辑文章
# 在 content/posts/ 目录下编辑 Markdown 文件

# 本地预览
hugo server --buildDrafts

# 提交并推送（自动触发部署）
git add .
git commit -m "Add new post"
git push origin master
```

## 🚢 部署

本站点使用 GitHub Actions 自动部署到 GitHub Pages：

1. 推送到 `master` 分支自动触发部署
2. Hugo 构建静态文件
3. 部署到 GitHub Pages
4. 通常 1-2 分钟内完成

部署配置见 `.github/workflows/deploy.yml`

## 📊 统计

- **文章数量**: 持续更新中
- **建站时间**: 2020 年
- **提交次数**: 60+
- **主题版本**: PaperMod (Latest)

## 👨‍💻 关于作者

**Achel Liu**

- 🏢 Developer • Designer
- 🔗 GitHub: [@AchelLiu](https://github.com/AchelLiu)
- 🌐 博客: [achelliu.github.io](https://achelliu.github.io)

关注技术、设计、农业与乡村发展。热爱分享，相信技术改变生活。

## 🤝 贡献

欢迎提出问题和建议！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 📄 许可证

本项目采用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。

## 🙏 致谢

- [Hugo](https://gohugo.io) - 强大的静态网站生成器
- [PaperMod](https://github.com/adityatelange/hugo-PaperMod) - 简洁优雅的 Hugo 主题
- [GitHub Pages](https://pages.github.com) - 免费的网站托管服务

---

<div align="center">

**[⬆ 回到顶部](#-achels-world)**

如果这个项目对你有帮助，欢迎 Star ⭐

Made with ❤️ by [Achel Liu](https://github.com/AchelLiu)

</div>

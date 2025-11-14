# CLAUDE.md

文件为 Claude Code (claude.ai/code) 在处理该代码仓库时提供指导。
# 项目概述
是一个基于 Jekyll 的静态网站/博客，使用 "Texture" 主题。该站点托管在 GitHub Pages 上，地址为
https://achelliu.github.io。内容主要是中文，关注农业、农村发展和个人笔记等主题。
# 关键配置文件
 `_config.yml`：主配置文件，包含站点元数据、主题设置和导航选项
- `Gemfile` 和 `texture.gemspec`：定义 Ruby 依赖项
- `index.md`：使用 "home" 布局的主页
# 内容结构
 `_posts/`：使用 YAML 前置数据的 Markdown 格式博客文章
- `_layouts/`：不同页面类型（首页、文章、页面）的 HTML 模板
- `_includes/`：可重用的 HTML 组件（页眉、页脚、导航）
- `_sass/`：Texture 主题的 SCSS 样式表
- `assets/`：CSS、JavaScript、字体和图像资源
# 主题特性
exture 主题支持：
- 多种配色方案（黑色、蓝色、红色、紫色、绿色）
- 响应式设计和流体排版
- 页脚中的社交媒体链接
- 首页上的文章摘要
- 可定制的导航
# 开发工作流程
. 使用 YAML 前置数据的 Markdown 编写文章
2. 使用 Jekyll 构建站点并托管在 GitHub Pages 上
3. 通过 `_config.yml` 和 SCSS 文件进行主题定制
# 重要说明
 文章按时间顺序组织在 `_posts` 目录中
- 站点使用 Jekyll SEO Tag 插件进行搜索引擎优化
- 样式通过 SCSS 处理，采用响应式设计原则
- 主题支持可在 `_config.yml` 中配置的多种纹理背景
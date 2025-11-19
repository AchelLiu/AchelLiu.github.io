# 文章可见性管理指南

## 📌 快速使用

### Windows 用户

```bash
# 隐藏文章
toggle-draft.bat content\posts\2020-02-03-note.md hide

# 显示文章
toggle-draft.bat content\posts\2020-02-03-note.md show
```

### Linux/Mac 用户

```bash
# 给脚本添加执行权限（首次使用）
chmod +x toggle-draft.sh

# 隐藏文章
./toggle-draft.sh content/posts/2020-02-03-note.md hide

# 显示文章
./toggle-draft.sh content/posts/2020-02-03-note.md show
```

## 🔍 手动方法

### 方法一：添加 draft 标记（推荐）

编辑文章文件，在 Front Matter 中添加 `draft: true`：

```yaml
---
layout: post
title: 我的私密文章
date: 2020-02-03
draft: true  # 添加这一行来隐藏文章
---
```

**效果**：
- ✅ 文章保留在 Git 仓库中
- ✅ 生产环境（GitHub Pages）不会显示
- ✅ 本地可以预览：`hugo server --buildDrafts`

### 方法二：设置未来发布日期

```yaml
---
title: 我的文章
date: 2020-02-03
publishDate: 2099-12-31  # 设置为未来日期
---
```

### 方法三：移动到私密目录

创建 `private/` 目录（已在 .gitignore 中排除）：

```bash
# 将文章移到私密目录
mkdir -p private/posts
mv content/posts/my-private-post.md private/posts/

# 这些文章完全不会被 Hugo 处理，也不会推送到 GitHub（如果在 .gitignore 中）
```

## 🎯 本地预览草稿

当文章标记为 `draft: true` 时，本地预览时需要添加参数：

```bash
# 包含草稿的本地预览
hugo server --buildDrafts

# 或简写
hugo server -D
```

## 📋 查看所有草稿文章

```bash
# 列出所有标记为 draft 的文章
grep -r "draft: true" content/posts/
```

## 💡 最佳实践

1. **敏感内容**：使用 `draft: true` 标记，文章仍会推送到 GitHub
2. **完全私密**：使用 `private/` 目录，不会被推送到 GitHub
3. **定时发布**：使用 `publishDate` 设置未来日期

## 🔄 批量操作

如果需要批量隐藏/显示多篇文章：

### Windows (PowerShell)

```powershell
# 批量隐藏包含特定关键词的文章
Get-ChildItem content\posts\*note*.md | ForEach-Object {
    .\toggle-draft.bat $_.FullName hide
}
```

### Linux/Mac

```bash
# 批量隐藏包含特定关键词的文章
for file in content/posts/*note*.md; do
    ./toggle-draft.sh "$file" hide
done
```

## ⚠️ 注意事项

- `draft: true` 的文章仍会存在于 Git 仓库中，只是不会显示在网站上
- 如果需要完全私密，请使用 `private/` 目录或不提交到 Git
- 部署前建议本地测试：`hugo --gc --minify` 检查生成的文件

#!/bin/bash
# 文章可见性切换脚本

if [ $# -eq 0 ]; then
    echo "用法: ./toggle-draft.sh <文章路径> [hide|show]"
    echo ""
    echo "示例:"
    echo "  ./toggle-draft.sh content/posts/2020-02-03-note.md hide   # 隐藏文章"
    echo "  ./toggle-draft.sh content/posts/2020-02-03-note.md show   # 显示文章"
    echo "  ./toggle-draft.sh content/posts/2020-02-03-note.md        # 切换状态"
    exit 1
fi

FILE="$1"
ACTION="${2:-toggle}"

if [ ! -f "$FILE" ]; then
    echo "错误: 文件不存在 - $FILE"
    exit 1
fi

# 检查文件是否已有 draft 字段
if grep -q "^draft:" "$FILE"; then
    CURRENT_STATE=$(grep "^draft:" "$FILE" | awk '{print $2}')

    if [ "$ACTION" = "hide" ]; then
        sed -i 's/^draft: false/draft: true/' "$FILE"
        echo "✅ 已隐藏文章: $FILE"
    elif [ "$ACTION" = "show" ]; then
        sed -i 's/^draft: true/draft: false/' "$FILE"
        echo "✅ 已显示文章: $FILE"
    else
        # 切换状态
        if [ "$CURRENT_STATE" = "true" ]; then
            sed -i 's/^draft: true/draft: false/' "$FILE"
            echo "✅ 已显示文章: $FILE"
        else
            sed -i 's/^draft: false/draft: true/' "$FILE"
            echo "✅ 已隐藏文章: $FILE"
        fi
    fi
else
    # 文件没有 draft 字段，在 Front Matter 中添加
    if [ "$ACTION" = "hide" ] || [ "$ACTION" = "toggle" ]; then
        # 在第一个 --- 后添加 draft: true
        sed -i '0,/---/!{0,/---/s/---/draft: true\n---/}' "$FILE"
        echo "✅ 已隐藏文章: $FILE"
    else
        echo "ℹ️  文章当前是可见的（无 draft 标记）"
    fi
fi

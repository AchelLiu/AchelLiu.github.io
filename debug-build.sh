#!/bin/bash
echo "================================"
echo "Hugo 本地构建调试脚本"
echo "================================"

echo ""
echo "1. 检查 Node.js 和 npm 环境..."
node --version
npm --version

echo ""
echo "2. 安装依赖..."
npm install

echo ""
echo "3. 检查 Hugo 版本..."
hugo version

echo ""
echo "4. 下载 Hugo 模块..."
hugo mod get

echo ""
echo "5. 构建网站..."
hugo --gc --minify

echo ""
echo "6. 检查生成的文件..."
ls -la public

echo ""
echo "调试完成！"
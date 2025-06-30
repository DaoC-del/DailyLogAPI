#!/bin/bash

# ===== 设置项目路径 =====
WORKDIR=$(dirname "$0")
cd "$WORKDIR"

# ===== 检查并获取 UID/GID =====
UID_VAL=$(id -u)
GID_VAL=$(id -g)

# ===== 写入 .env 文件 =====
cat > .env <<EOF2
NAPCAT_UID=$UID_VAL
NAPCAT_GID=$GID_VAL
EOF2

echo "✅ 已写入 .env:"
cat .env

# ===== 创建数据挂载目录 =====
mkdir -p napcat_data
echo "📁 已确保持久化目录 napcat_data 存在"

# ===== 启动容器 =====
echo "🚀 正在启动 NapCat 实例..."
docker compose up -d

echo "🟢 NapCat 启动完成，请用浏览器访问进行扫码登录："
echo "👉 http://localhost:6099/webui"

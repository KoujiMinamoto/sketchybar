#!/bin/bash

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}开始安装 Kouji 的 SketchyBar 配置...${NC}"

# 检查是否已安装 Homebrew
if ! command -v brew &> /dev/null; then
    echo -e "${RED}未检测到 Homebrew，请先安装 Homebrew${NC}"
    echo -e "访问 https://brew.sh/ 获取安装指南"
    exit 1
fi

# 检查是否已安装 SketchyBar
if ! command -v sketchybar &> /dev/null; then
    echo -e "${BLUE}正在安装 SketchyBar...${NC}"
    brew tap FelixKratz/formulae
    brew install sketchybar
fi

# 创建配置目录
echo -e "${BLUE}创建配置目录...${NC}"
mkdir -p ~/.config/sketchybar

# 备份现有配置
if [ -d ~/.config/sketchybar.bak ]; then
    echo -e "${BLUE}删除旧的备份...${NC}"
    rm -rf ~/.config/sketchybar.bak
fi

if [ -d ~/.config/sketchybar ] && [ "$(ls -A ~/.config/sketchybar)" ]; then
    echo -e "${BLUE}备份现有配置...${NC}"
    mv ~/.config/sketchybar ~/.config/sketchybar.bak
fi

# 克隆配置仓库
echo -e "${BLUE}下载配置文件...${NC}"
git clone https://github.com/kouji/koujisketchybar_setup.git ~/.config/sketchybar

# 设置权限
echo -e "${BLUE}设置脚本执行权限...${NC}"
find ~/.config/sketchybar -name "*.sh" -type f -exec chmod +x {} \;

# 重启 SketchyBar
echo -e "${BLUE}重启 SketchyBar...${NC}"
brew services restart sketchybar

echo -e "${GREEN}安装完成!${NC}"
echo -e "${BLUE}如需自动触发 Brew 更新提醒，请将以下函数添加到您的 .zshrc 或 .bashrc 文件中:${NC}"
echo -e "
brew() {
  command brew \"\$@\"
  if [[ \$* =~ \"update\" ]] || [[ \$* =~ \"upgrade\" ]]; then
    sketchybar --trigger brew_update
  fi
}
"

exit 0
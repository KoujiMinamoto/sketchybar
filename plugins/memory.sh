#!/bin/bash

# 获取内存使用情况
MEMORY_USAGE=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{print $5}' | tr -d '%')
MEMORY_USED=$((100 - MEMORY_USAGE))

# 更新内存使用百分比显示
sketchybar --set $NAME label="${MEMORY_USED}%"

# 更新内存图表颜色
if [ $MEMORY_USED -gt 80 ]; then
  SYS_COLOR=$RED
  USER_COLOR=$ORANGE
elif [ $MEMORY_USED -gt 50 ]; then
  SYS_COLOR=$ORANGE
  USER_COLOR=$BLUE
else
  SYS_COLOR=$GREEN
  USER_COLOR=$BLUE
fi

# 计算系统和用户内存使用比例
SYS_MEM=$((MEMORY_USED / 3))
USER_MEM=$((MEMORY_USED - SYS_MEM))

# 更新内存图表
sketchybar --push memory.sys $SYS_MEM
sketchybar --push memory.user $USER_MEM
# Kouji's SketchyBar Configuration

这是我的个人 SketchyBar 配置，为 macOS 提供美观且功能丰富的状态栏。

## 预览图

<img src="preview.png" alt="预览图" width="800">

这是我的SketchyBar配置，包含Brew更新提醒、日期时间、天气信息等功能。

## 功能特点

- 简洁美观的设计风格
- Brew 更新提醒功能
- 内存使用情况显示
- 电池状态监控
- 日期和时间显示
- 天气信息
- 以及更多...

## 安装

### 前提条件

- macOS
- [Homebrew](https://brew.sh/)
- [SketchyBar](https://github.com/FelixKratz/SketchyBar)

### 自动安装

使用以下命令一键安装：

```bash
curl -L https://raw.githubusercontent.com/kouji/koujisketchybar_setup/main/install.sh | sh
```

### 手动安装

1. 克隆此仓库：

```bash
git clone https://github.com/kouji/koujisketchybar_setup.git ~/.config/sketchybar
```

2. 启动 SketchyBar：

```bash
brew services start sketchybar
```

## 配置说明

- `sketchybarrc`: 主配置文件
- `colors.sh`: 颜色配置
- `icons.sh`: 图标定义
- `items/`: 各个项目的配置
- `plugins/`: 插件脚本

## 自定义

您可以通过编辑以下文件来自定义配置：

- 修改 `colors.sh` 更改颜色主题
- 编辑 `items/` 目录下的文件添加或修改状态栏项目
- 调整 `plugins/` 目录下的脚本更改功能逻辑

## 触发更新

某些项目（如 Brew 更新提醒）需要手动触发更新。您可以在 `.zshrc` 或 `.bashrc` 中添加以下函数：

```bash
brew() {
  command brew "$@"
  if [[ $* =~ "update" ]] || [[ $* =~ "upgrade" ]]; then
    sketchybar --trigger brew_update
  fi
}
```

## 许可证

MIT

## 致谢

- [FelixKratz](https://github.com/FelixKratz) - SketchyBar 的创建者
- 所有分享配置和想法的社区成员
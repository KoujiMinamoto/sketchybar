# 上传到GitHub指南

## 步骤1: 创建GitHub仓库

1. 登录您的GitHub账户
2. 点击右上角的"+"图标，选择"New repository"
3. 仓库名称填写：`sketchybar-config`
4. 添加描述：`我的macOS SketchyBar配置`
5. 选择公开仓库
6. 不要初始化仓库（不勾选"Add a README file"）
7. 点击"Create repository"

## 步骤2: 初始化本地Git仓库并上传

打开终端，执行以下命令：

```bash
# 进入配置目录
cd ~/.config/sketchybar

# 初始化Git仓库
git init

# 添加所有文件到暂存区
git add .

# 提交更改
git commit -m "初始提交：我的SketchyBar配置"

# 添加远程仓库
git remote add origin https://github.com/[你的GitHub用户名]/sketchybar-config.git

# 推送到GitHub
git push -u origin main
```

## 步骤3: 更新安装脚本中的GitHub用户名

1. 编辑`install.sh`和`README.md`文件
2. 将所有`[你的GitHub用户名]`替换为您的实际GitHub用户名

## 步骤4: 添加预览图

1. 截取您的SketchyBar状态栏的截图
2. 将截图保存为`preview.png`并放在仓库根目录
3. 提交并推送更改：

```bash
git add preview.png
git commit -m "添加预览图"
git push
```

## 步骤5: 分享您的配置

现在您可以通过以下链接分享您的配置：
- 仓库链接: https://github.com/[你的GitHub用户名]/sketchybar-config
- 一键安装: `curl -L https://raw.githubusercontent.com/[你的GitHub用户名]/sketchybar-config/main/install.sh | sh`
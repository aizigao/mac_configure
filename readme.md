# 个人 mac 设置

## 系统配置

### 功能开启与关闭

```shell
# 电池显示是百分百
defaults write com.apple.menuextra.battery -bool true

# 禁止自动拼写纠正
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Finder 显示状态栏
defaults write com.apple.finder ShowStatusBar -bool true

# Finder 显示地址栏
defaults write com.apple.finder ShowPathbar -bool true

# 禁止在网络驱动器上生成 .DS_Store 文件
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
```

### 键盘设置

-

- 第三方工具设置，主要是 key-

## 终端设置

### 字体

字体我主要用 [nerdfonts](https://www.nerdfonts.com/) 的字体，现在用的是 SauceCodePro(这个是习惯了，主要看 0oil1|之类的显示时是否可以清楚的辨认出来),
mac 上使用是下载后全选后，后键打开处理下冲突字体就好, linux 和 mac 下都可以用安装脚本，arch 下直接用`yay nerdfonts` 就好啦。

### 常用终端软件及设置

### 基本的玩意

- 下载 xcode (我也是要用 xcode,直接下载 xcode 了)
- homebrew

安装

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

清华源（换源快点）

```shell
git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git
brew update
```

复原

```shell
git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git

git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/homebrew-core.git

git -C "$(brew --repo homebrew/cask)" remote set-url origin https://github.com/Homebrew/homebrew-cask.git

brew update
```

- ssh-key

```
ssh-keygen
cd ~/.ssh
pbcopy < id_rsa.pub #复制一下
```

### 开启 oh-my-zsh

- 开启 zsh `chsh -s /bin/zsh`
- 初始化 on-my-zsh
- 插件 1:
- 插件 2:
- 插件 3:
- 插件 4:
- 插件 4:
- 主题:

### 其它工具及终端 app

- thefuck 爱上这个东西了，很方便
- ag 搜索很快，在考虑要不要换到 rg
- tmux 分屏用，不需要其它玩意了(iterm2)，有这个就好
- git 不用说了
- neovim 用 4.0 以上的，因为有浮动窗口
- npm fx 终端内 json 格式化工具
- npm http-server 快速简单的服务器
- fzy 搜索用
- mysql mongo redis 我会用的数据库
- nginx 服务器
- openssl
- git-flow-avh git-flow 的一些 alias
- htop 更好的 top 工具
- tree
- aria2

### 定义 alias

- http_proxy 设置代理

```shell

```

## GUI 软件

### 免费的，brew 走一波

- XMind-zen，因为经常用 Linux，为保持兼容就不用其他了
- alerity 终端， 啥都不带，分不了屏，配合 tmux 使用，自称 gpu 加速，性能最高，反正我是信了，就用它了
- rime 输入法, 我用新世纪五笔，就用这个了
- google-chrome xx
- vscode
- nvm
- postman
- typora
- android-file-transfer
- java
- dingtalk
- wechat
- tim
- visual-studio-code
- qlockcker, qlcolorcode,qlmarkdown,qlstephen 快速序览插件

### 收费的，但是还是可以 brew 安装

- Photoshop UI 相关
- Ilustrutor UI 相关
- AfterEffect 做动画

### 收费的或要自已编译和下载的

- electronic-ssr 听说作者主动下架了，不管了，当前用着爽
- SourceTree git 管理，一般我用来看 git log
- sizeUp mac 自带的分屏不好用啊，喜欢用这个
- Bartendar 状态管理
- xx cpu ram network 监控用

### 那啥用, 小弟还是穷

```shell
sudo spctl --master-disable
```

## 参考

- [jexchan/osx setting shell scripts](https://gist.github.com/jexchan/5754956)

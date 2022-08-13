# myvim
这个仓库将记录我自己常用的vim配置,用于更高效的进行代码的开发
## 操作说明
###	1.首先安装vim
```
sudo apt install vim
```
### 2.创建文件夹和vimrc文件

```
mkdir ~/.vim/bundle  # 这里主要用于保存vim的一些插件
vi ~/.vimrc   # 这个是vim的主要配置为文件
```
### 3.安装插件管理工具
这里用的是Vundle

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
然后对我的.vimrc文件里需要的插件进行安装

```
vim ~/.vimrc    #打开文件
```
进入命令行模式，输入 :PluginInstall

说明：这里用到的插件

```
sudo apt install ctags	#ctags 插件
sudo apt install cscope	#cscope 插件

```
### 4.安装缺失的插件
#### 4.1 NERDtree
```
cd  ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```
对于需要

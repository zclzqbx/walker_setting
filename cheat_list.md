#To Record Some message
##vim setting
---
https://www.cnblogs.com/youxia/p/linux006.html


##common plugin
---
https://www.zhihu.com/question/19634223
https://www.linuxidc.com/Linux/2016-06/132262.htm


##vundel using
---
https://www.cnblogs.com/aaronLinux/p/6798898.html
https://www.jianshu.com/p/0e85e7c9e543
:BundleList -列举出列表中(.vimrc中)配置的所有插件
:BundleInstall -安装列表中全部插件
:BundleInstall! -更新列表中全部插件
:BundleSearch foo -查找foo插件
:BundleSearch! foo -刷新foo插件缓存
:BundleClean -清除列表中没有的插件
:BundleClean! -清除列表中没有的插件


##winmanager installation
---
https://www.cnblogs.com/heartchord/p/4912029.html

##lookupfile using
---
https://blog.easwy.com/archives/advanced-vim-skills-lookupfile-plugin/


##vim using
---
https://www.cnblogs.com/yangjig/p/6014198.html
https://www.cnblogs.com/softwaretesting/archive/2011/07/12/2104435.html
```
:bn    next file
:bp    previous file
:split split window hori
:vsplit split window vicel
/text　　查找text，按n健查找下一个，按N健查找前一个。

?text　　查找text，反向查找，按n健查找下一个，按N健查找前一个。

vim中有一些特殊字符在查找时需要转义　　.*[]^%/?~$

:set ignorecase　　忽略大小写的查找

:set noignorecase　　不忽略大小写的查找

查找很长的词，如果一个词很长，键入麻烦，可以将光标移动到该词上，按*或#键即可以该单词进行搜索，相当于/搜索。而#命令相当于?搜索。

:set hlsearch　　高亮搜索结果，所有结果都高亮显示，而不是只显示一个匹配。

:set nohlsearch　　关闭高亮搜索显示

:nohlsearch　　关闭当前的高亮显示，如果再次搜索或者按下n或N键，则会再次高亮。

:set incsearch　　逐步搜索模式，对当前键入的字符进行搜索而不必等待键入完成。

:set wrapscan　　重新搜索，在搜索到文件头或尾时，返回继续搜索，默认开启。
w 向前移动一个单词（光标停在单词首部），如果已到行尾，则转至下一行行首。此命令快，可以代替l命令。

b 向后移动一个单词 2b 向后移动2个单词
```
##complete
---
https://blog.csdn.net/g_brightboy/article/details/19498983
1. 代码（普通变量函数）的自动弹出 AutoComplPop
2. c/c++代码（类的 . , ->, :: 操作符）的自动补全 OmniCppComplete


##mark.vim using
---
```
,m 高亮或反高亮一个单词
,n 清除当前的单词高亮(光标处)若光标处无高亮的单词就清除所有的单词高亮显示
,r 按照输入的正则表达式高亮单词

搜索
,* 跳转到当前高亮的下一个单词
,# 跳转到当前高亮的上一个单词
,/ 跳转到任一下一个高亮单词
/? 跳转到任一上一高亮单词
```











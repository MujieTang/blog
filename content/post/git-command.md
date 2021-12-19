---
title: "Git Command"
date: 2021-11-29T01:37:56+08:00
lastmod: 2021-11-29T01:37:56+08:00
draft: false
tags: ["git", "gh"]
categories: ["github"]
author: "tangmujie"

contentCopyright: '<a rel="license noopener" href="https://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License" target="_blank">Creative Commons Attribution-ShareAlike License</a>'

---

![流程图](/img/git/git-process.png)

<font face="微软雅黑">微软雅黑


# 1. 初始化git
```shell
#在当前目录下新建一个git代码库
$ git init

#clone项目
$ git clone [url]

```

# 2.配置
```shell
#显示当前的git配置
$ git config --list

#编译git配置文件
$ git config -e [--global]

#设置提交代码时的用户信息
$ git config [--global] user.name "[name]"
$ git config [--global] user.email "[email address]"
```

# 3.增加/删除文件
```shell
#添加指定文件到暂存区
$ git add [file1] [file2] ...

#添加指定目录到暂存区，包括子目录
$ git add [dir]

#添加当前目录的所有文件到暂存区
$ git add .

#添加每个变化前，要求确认
#对于同一文件的多次变化，可以实现分次提交
$ git add -p

#删除工作区文件，并且将这次删除放入暂存区
$ git rm [file1] [file2] ...

#停止追踪指定文件，但该文件会保留在工作区
$ git rm --cached [file]

#改文件名，并且将这个改名的文件放入暂存区
$ git mv [file-originnal] [file-renamee]
```

# 4.代码提交

#### 4.1 本地仓库提交
```shell
#提交暂存区到仓库区
$ git commit -m "[message]"

#提交暂存区指定的文件到仓库区
$ git commit [file1] [file2] [file3] ... -m "[message]"

#提交工作区自从上次commit之后的变化，直接到仓库区
$ git commit -a 

#提交时显示所有diff信息
$ git commit -v

#使用一次新的commit，替代上一次提交
#如果代码没有任何新变化，则用来改写上一次commit提交信息
$ git commit --amend -m "[messsage]"

#重做上一次commit，并包括指定文件的新变化
$ git commit --amend [file1] [file2] ...
```

#### 4.2 从本地仓库提交到远程仓库
```shell
#上传本地指定分支到远程仓库
$ git push [remote] [brahch]
```

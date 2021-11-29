---
title: "使用Hugo快速搭建静态站点"
date: 2020-08-05T10:03:21Z
draft: false
tags: ["hugo", "lighttpd"]
categories: ["golang"]
---

## 1. 下载hugo
```shell
$ export HUGO_VERSION=0.70.0

$ wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

$ tar -zxvf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

$ chmod +x hugo

$ cp hugo /usr/local/bin
```

## 2. 创建站点
```shell
$ hugo new site blog
```

> blog目录结构:  
├── archetypes      #网站内容类型  
├── config.toml     #网站主配置文件  
├── content         #网站内容（MarkDown）  
├── data            #网站数据信息  
├── layouts         #网站模板文件  
├── static          #网站images/css/js静态资源  
└── themes          #网站主题  

## 3. 下载主题
```shell
$ git clone https://github.com/olOwOlo/hugo-theme-even themes/even
```
如需选择主题，请点击：[Hugo Themes](https://themes.gohugo.io/)

## 4. 设置配置
```shell
$ cp -r themes/even/exampleSite/* .
```
这里，直接使用主题例子中的配置文件. 如需更改配置，请参考：[hugo-theme-even](https://github.com/olOwOlo/hugo-theme-even) 或者 [Hugo Documents](https://gohugo.io/documentation/)

## 5. 编译站点
```shell
$ hugo
```
如需调试站点内容或浏览主题模板，请运行：`hugo server --bind 0.0.0.0`. 编译完成后，Hugo将所有的静态文件输出到`public`目录

## 6. 安装lighttpd
```shell
$ apt-get update

$ apt-get -y install lighttpd

$ cp public/* /var/www/html
```

## 7. 开启服务
```shell
$ systemctl start lighttpd
```
开启 Web 服务后，打开浏览器，输入域名或IP即可
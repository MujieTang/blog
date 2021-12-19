---
title: "Hugo deploy static site"
date: 2021-11-25T01:37:56+08:00
lastmod: 2021-11-25T01:37:56+08:00
draft: false
tags: ["hugo", "lighttpd"]
categories: ["linux"]
author: "tangmujie"

contentCopyright: '<a rel="license noopener" href="https://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License" target="_blank">Creative Commons Attribution-ShareAlike License</a>'

---

# 1.Install hugo
```shell
$ export HUGO_VERSION=0.70.0

$ wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

$ tar -zxvf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

$ chmod +x hugo

$ cp hugo /usr/local/bin
```

# 2.Create site
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
└── public          #hugo编译完的所有静态文件输出目录

# 3.Download theme
```shell
$ git clone https://github.com/olOwOlo/hugo-theme-even themes/even
```
如需选择主题，请点击：[Hugo Themes](https://themes.gohugo.io/)

# 4.Configuration Setting
```shell
$ cp -r themes/even/exampleSite/* .
```
这里，直接使用主题例子中的配置文件. 如需更改配置，请参考：[hugo-theme-even](https://github.com/olOwOlo/hugo-theme-even) 或者 [Hugo Documents](https://gohugo.io/documentation/)

# 5.Complile site
```shell
$ sudo hugo
```
如需调试站点内容或浏览主题模板，请运行：hugo server --bind 0.0.0.0. 编译完成后，Hugo将所有的静态文件输出到public目录

# 6.Install lighttpd
#### Ubuntu
```shell
$ sudo apt-get -y install lighttpd

$ sudo cp -r public/* /var/www/html
```
#### Centos
```shell
$ sudo yum install lighttpd

$ sudo cp -r public/* /var/www/html
```
也可以用其他web服务的工具（比如Nginx, apache2)

# 7.Enable lighttpd
```shell
$ sudo systemctl start lighttpd
```
开启 Web 服务后，打开浏览器，输入域名或IP即可

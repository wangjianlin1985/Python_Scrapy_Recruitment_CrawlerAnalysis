# Python_Scrapy_Recruitment_CrawlerAnalysis
Python基于Scrapy兼职招聘网站爬虫数据分析设计

技术环境: PyCharm + Django2.2 + Python3.7 + Scrapy + Redis + mysql

  本项目爬虫端和网站后台采用Python语言开发，其中爬虫利用的是Scrapy框架可以轻松实现网站数据的抓取，抓取到的兼职信息直接保存到mysql数据库中，前端采用Vue开发，实现了前后端分离的模式，前端请求Django后端接受到数据然后利用echarts画各种统计图。

## 前端开发 ```bash
# 进入项目目录
cd dvadmin-ui
# 安装依赖
npm install
# 建议不要直接使用cnpm安装依赖，会有各种诡异的 bug。
可以通过如下操作解决 npm 下载速度慢的问题。
npm install --registry=https://registry.npm.taobao.org
# 启动服务
npm run dev
# 浏览器访问 http://localhost:8080
# .env.development 文件中可配置启动端口等参数
```### 发布 ```bash
# 构建测试环境
npm run build:stage
# 构建生产环境
npm run build:prod
```## 后端
~~~bash
1. 进入项目目录 cd jzzpfx
2. 在 ./confenv.py 中配置数据库信息
3. 安装依赖环境
 pip install -r requirements.txt
4. 初始化数据
 python manage.py init
 

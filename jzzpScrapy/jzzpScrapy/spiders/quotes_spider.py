import scrapy
from .. import items
import pandas as pd
import datetime

from jzzpScrapy.items import JzzpscrapyItem


class QuotesSpider(scrapy.Spider):
    name = "quotes"

    def start_requests(self):
        urls = [
            #'https://bj.ssjzw.com/job/',
            'https://sh.ssjzw.com/job/', #以上海市的招聘信息为例
        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)

    def parse(self, response):
        # 获取所有招聘分类
        dqaul = response.xpath('//div[@class="dqa"]/ul')[0]
        types = dqaul.xpath('a/text()').getall()
        links = dqaul.xpath('a/@href').getall()
        for index in range(len(types)):
            if index > 0 and index < 2:
                _url = 'https:' + links[index]
                type = types[index]
                yield scrapy.Request(url=_url, callback=self.parse_detail, meta={'type': type})

    def parse_detail(self, response):
        # 读取配值文件
        type = response.meta['type']
        # 获取所有招聘分类
        dqaul = response.xpath('//div[@class="dqa"]/ul')[1]
        cities = dqaul.xpath('a/text()').getall()
        links = dqaul.xpath('a/@href').getall()
        for index in range(len(cities)):
            if index > 1 and index < 3:
                _url = 'http:' + links[index]
                city = cities[index]
                yield scrapy.Request(url=_url, callback=self.parse_linkdetail, meta={'type': type, 'city': city})

    def parse_linkdetail(self, response):
        pass


    def parse_content(self, response):
       

        showbs=response.xpath('//div[@class="showb"]/ul')
        for index in range(len(showbs)):
            content = showbs[index].get()
            if '初中' in content:
                item["xl"] = '初中'
            if '高中' in content:
                item["xl"] = '高中'
            if '大专' in content:
                item["xl"] = '大专'
            if '本科' in content:
                item["xl"] = '本科'
            if '研究生' in content:
                item["xl"] = '研究生'
            if '博士' in content:
                item["xl"] = '博士'
            if '更新时间' in content:
                item["fbsj"] = showbs[index].xpath('text()').get().replace('更新时间：', '')

        # 获取所有招聘分类
        # item = items.JzzpscrapyItem()
        # item["zpzw"] = response.xpath('//div[@class="showb"]/ul')[0].xpath('h1/a/text()').get()
        # item["type"] = type
        # item["xz"] = listztlb[index].xpath('ul/li/b/text()').get()
        # item["city"] = city
        # item["gsmc"] = listztlb[index].xpath('ul/li/text()').get()
        #
        #
        #
        # print("正在抓取数据：招聘职位：" + item["zpzw"] + " 公司名称:" + item["gsmc"] + " 薪资：" + item[
        #     "xz"] + " 地区：" + city + " 分类：" + type)
        # df = pd.DataFrame(item)
        # df = df.dropna()  # 去除空行
        # df = df.drop_duplicates()  # 去除重复行
        yield item


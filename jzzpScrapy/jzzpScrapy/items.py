# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class JzzpscrapyItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    zpzw = scrapy.Field()  # 招聘职位
    gsmc = scrapy.Field()  # 公司
    xz = scrapy.Field()  # 薪资
    city = scrapy.Field()  # 区域
    type = scrapy.Field()  # 招聘类型
    xl = scrapy.Field()  # 学历要求
    nx = scrapy.Field()  # 招聘类型
    fbsj= scrapy.Field()  # 发布时间

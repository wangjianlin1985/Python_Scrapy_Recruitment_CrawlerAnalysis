# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter
import pymysql


class JzzpscrapyPipeline:
    def __init__(self):
        # 后面三个依次是数据库连接名、数据库密码、数据库名称
        self.connect = pymysql.connect(host='127.0.0.1', user='root', passwd='123456', db='jzzpfx')
        self.cursor = self.connect.cursor()

    def process_item(self, item, spider):
        # sql语句
        insert_sql = "INSERT INTO permission_jzzp(update_datetime, create_datetime, zpzw, gsmc, xz, city, type, creator_id, xl, nx) VALUES ( %s,  %s, %s, %s, %s, %s, %s, 1, %s, %s)"
        # 执行插入数据到数据库操作
        self.cursor.execute(insert_sql, (item['fbsj'], item['fbsj'],
            item['zpzw'], item['gsmc'], item['xz'], item['city'], item['type'], item['xl'], item['nx']))
        # 提交，不进行提交无法保存到数据库
        self.connect.commit()

    def close_spider(self, spider):
        # 关闭游标和连接
        self.cursor.close()
        self.connect.close()

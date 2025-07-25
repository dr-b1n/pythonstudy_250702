# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter
from scrapy.exceptions import DropItem

class CleanCategoryPipeline:
    def process_item(self, item, spider):
        item["category"] = item["category"].strip()
        return item

class SetPipeline :
    def __init__(self):
        self.categories_seen = set()

    def process_item(self, item, spider) :
        if item["category"] in self.categories_seen :
            raise DropItem("Duplicate item found : %s" % item) 
        else :
            self.categories_seen.add(item["category"])
            return item

    # 생성자 함수
    # self.categories_seen > 데이터에 set()이라는 함수를 정의함으로서 중복값을 받지 못 하게 함
    # raise를 썼다는 거 자체가 dropitem을 쓰겠다는 의미
    # %s을 통해 중복된 값이 들어갈 것 (문자열을 사용하여)

class RemoveoPhrasePipeline:
    def process_item(self, item, spider):
        item["category"] = item["category"].replace(" 관련 상품 추천", "")
        return item
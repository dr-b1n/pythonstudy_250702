import scrapy
from lindahazel_project4.items import LindahazelProject4Item

class MultipleWebsSpider(scrapy.Spider):
    name = "multiple_webs"
    allowed_domains = ["davelee-fun.github.io"]
    start_urls = ["https://davelee-fun.github.io"]
 
    def start_requests(self):
        urls = ["https://davelee-fun.github.io"]
        urls.extend([f"https://davelee-fun.github.io/page{i}" for i in range(2, 7)])
        
        for url in urls :
            yield scrapy.Request(url, self.parse)
            # Request 함수를 통해서 url이라는 리스트에 주소값을 self에 파싱해줘
            # 약속되어진 next의 단계를 알아서 해줘
    def parse(self, response):
        titles = response.css("h4.card-text::text").getall()
        
        for title in titles :
            item = LindahazelProject4Item()
            item["title"] = title
            yield item 
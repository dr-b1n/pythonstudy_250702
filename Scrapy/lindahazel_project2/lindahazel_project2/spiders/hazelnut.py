import scrapy
from lindahazel_project2.items import LindahazelProject2Item

class HazelnutSpider(scrapy.Spider):
    name = "hazelnut"
    allowed_domains = ["davelee-fun.github.io"]
    start_urls = ["https://davelee-fun.github.io/"]

    def parse(self, response):
        item = LindahazelProject2Item()
        item["title"] = response.css("h1.sitetitle::text").get()
        description = response.xpath("//p[@class='lead']/text()").get()
        item["description"] = description
        yield item 

        

import scrapy


class LindahazelSpider(scrapy.Spider):
    name = "lindahazel"
    allowed_domains = ["davelee-fun.github.io"]
    start_urls = ["https://davelee-fun.github.io/"]

    def parse(self, response):
        # Field
        
        # CSS Selector 방식
        title = response.css("h1.sitetitle::text").get()
        # XPATH 방식
        description = response.xpath("//p[@class='lead']/text()").get()
        
        # 크롤링에 성공한 데이터를 딕셔너리의 형태로 저장 
        yield {
            "title": title,
            "description" : description.strip()
        }

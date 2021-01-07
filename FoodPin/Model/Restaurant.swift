//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", phone: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
    sourceArray = [ 
        Restaurant(name: "吳鳳路傳統豆漿店", type: "Breakfast", location: "220新北市板橋區吳鳳路50巷18號", phone: "+886938859780", summary: "「吳鳳路傳統豆漿店」是家老字號的江子翠早餐，開業至今已經三十多年，最為人津津樂道的就是這裡的蛋餅超過三十種口味，而且持續增加中，號稱板橋蛋餅王", image: "吳鳳路.jpg", isVisited: false),
        Restaurant(name: "好初早餐", type: "Breakfast & Brunch", location: "220新北市板橋區文化路二段125巷70號", phone: "+886222532087", summary: "食尚玩家之超人氣早午餐！！想要吃，又不想像我排了兩小時隊的朋友建議在開店前就先到現場報到，擠進第一輪的列車就不用經過漫長的等待囉！", image: "好初.jpg", isVisited: false),
        Restaurant(name: "太和豆漿", type: "Breakfast", location: "220新北市板橋區民治街69號", phone: "+886222513749", summary: "傳說中的海景饅頭包著豬排、蔥蛋、油條、火腿、起司、花生醬、油條，脆脆的花生醬是有顆粒的每一口都是驚喜，很有層次感", image: "太和豆漿.jpg", isVisited: false),
        Restaurant(name: "巧園雞肉飯", type: "Traditional", location: "220新北市板橋區懷德街80號", phone: "+886282521282", summary: "雞肉飯有嚼勁不乾柴，滷肉飯大塊軟嫩，米煮的彈性適中，豆干微辣口味特殊，總結：讚！", image: "巧園.jpg", isVisited: false),
        Restaurant(name: "Yuly - Brunch & Coffee", type: "Breakfast & Brunch", location: "220新北市板橋區雙十路三段10巷16號", phone: "+886282570577", summary: "餐點頗具用心，而且價位不高，想在早晨享用頓美味豐盛的早午餐，yuly是個不錯的選擇～", image: "Yuly.jpg", isVisited: false),
        Restaurant(name: "Gourmet Pasta", type: "Italian", location: "242新北市新莊區中正路514巷47號", phone: "+886229087212", summary: "口味確實在輔大這邊的義大利麵來說是數一數二，價格合理沒問題，店內有免費無限暢飲濃湯和飲料(紅茶&蜂蜜檸檬)", image: "古米特.jpg", isVisited: false),
        Restaurant(name: "莊敬路263巷口牛肉麵", type: "Beef Noodles", location: "220新北市板橋區莊敬路263巷8號", phone: "+886282528422", summary: "這是當地人喜歡去的牛肉專賣店。湯底很好吃，可以一直續湯而且麵條種類很多。僅僅麵條的量就相當於普通牛肉麵條店的兩倍。單就價格來說很不錯。它藏在巷子裡。總體而言，一家不錯的店。", image: "牛肉麵.jpg", isVisited: false),
        Restaurant(name: "甜福。貳 FUKU Brunch早午餐", type: "Breakfast & Brunch", location: "220新北市板橋區公館街86號", phone: "+886229690076", summary: "精緻的網美早午餐店。價格合理，餐點份量也不會太少，適合愛拍照打卡且肚子很餓的朋友來嚐嚐！", image: "fuku.jpg", isVisited: false),
        Restaurant(name: "潮粥府沙鍋粥", type: "Traditional", location: "220新北市板橋區文化路二段419號", phone: "+886222525088", summary: "位於板橋江子翠的『潮粥府沙鍋粥』，提供特色料理沙鍋粥，由現撈海產搭配生米熬煮成粥，像是鮑魚粥、蟹膏粥、龍蝦粥，將海鮮的鮮甜，融入粥底，適合混搭店內各種熱炒小菜都非常對味。", image: "潮州府沙鍋粥.jpg", isVisited: false),
        Restaurant(name: "楊家紅豆餅", type: "Snack", location: "220新北市板橋區文化路二段124巷28號", phone: "+886282583868", summary: "必吃奶油餅！非常好吃，現點現做，不論是平日或假日都是大排長龍而且一下子就會賣完！", image: "楊家紅豆餅.jpg", isVisited: false),
        Restaurant(name: "起家厝Khi Ke Thsu Cafè", type: "Breakfast & Brunch", location: "220新北市板橋區松江街118號", phone: "+886222521637", summary: "一間漂亮的早午餐店，食物非常好吃且乾淨衛生，店內的氣氛也非常的舒適！ ", image: "起家厝.jpg", isVisited: false),
        Restaurant(name: "定光 韓食輕飲", type: "Korean", location: "220新北市板橋區西門街4號", phone: "+886909553908", summary: "CP值極高的韓式餐廳！部隊鍋份量非常足夠，而生菜包肉也是一等一的美味，餐點也都非常的便宜！", image: "定光.jpg", isVisited: false),
        Restaurant(name: "Lazy Pig Sandwich 三明治專賣店", type: "Breakfast & Brunch", location: "220新北市板橋區文化路二段410巷2弄3號1樓", phone: "+886222540588", summary: "店內裝潢非常可愛，三明治也非常好吃，並有提供雜誌閱讀以及毛絨玩具，是個適合親子用餐的地方！、", image: "lazypig.jpg", isVisited: false),
        Restaurant(name: "泰之初Brunch 江翠店", type: "Thai,Breakfast & Brunch", location: "220新北市板橋區松柏街61號", phone: "+886222585228", summary: "捷運江子翠站附近松柏街上的「泰之初」供應的泰式早午餐非常特別！「泰之初」供應的泰式料理餐點類型相當豐富，各道餐點的口味都很不錯。", image: "泰之初.jpg", isVisited: false),
        Restaurant(name: "IT'S就是義麵屋", type: "Italian", location: "220新北市板橋區文化路二段182巷7弄17號", phone: "+886222501015", summary: "從小吃到大的義大利麵，好吃且價格合理，餐點選擇豐富！", image: "義麵屋.jpg", isVisited: false),
        Restaurant(name: "茶朵木", type: "Beverage", location: "220新北市板橋區莒光路59號", phone: "+886222533931", summary: "看似平凡無奇的飲料店，卻常常有許多在地人點店內的「紅茶拿鐵加波霸」，可見店家魅力不同凡響！", image: "茶朵木.jpg", isVisited: false),
        Restaurant(name: "成昌食堂", type: "Traditional", location: "220新北市板橋區中山路二段157號", phone: "+886289531120", summary: "非常具有古色古香的老店，老饕必點控肉！不論平日或假日都是大排長龍！", image: "成昌食堂.jpg", isVisited: false),
        Restaurant(name: "雅米早餐", type: "Breakfast & Brunch", location: "220新北市板橋區中山路二段82號", phone: "+886289518802", summary: "份量非常大的早午餐店，餐點好吃且服務生態度非常好。時常會有抽獎活動，可以去試試運氣！", image: "yummybrunch.jpg", isVisited: false),
        Restaurant(name: "石二鍋", type: "Hot Pot", location: "220新北市板橋區文化路一段360號", phone: "+886222502029", summary: "雖然是一間連鎖的火鍋店，但食物都非常的新鮮且美味，對於學生來說是再好不過的小火鍋選擇！", image: "石二鍋.jpg", isVisited: false),
        Restaurant(name: "9% 酒趴串燒Bar", type: "Bar", location: "220新北市板橋區文化路二段357號", phone: "+886282511709", summary: "店內非常多的調酒及炸物，也有飛鏢機讓你與朋友們盡情放鬆玩耍！", image: "9%.jpg", isVisited: false),
        Restaurant(name: "星馬廚房", type: "South-East Asian", location: "220新北市板橋區文化路一段311之2號", phone: "+886222512222", summary: "好食物 會上癮 小地方 大味道 我們不是大廚師 只是愛料理 沒有浮誇的花樣 只有真心呈現 用心烹調 沒有山珍海味 只有傳統 溫暖道地的家鄉味", image: "星馬廚房.jpg", isVisited: false),
        Restaurant(name: "勇氣食堂", type: "Japanese", location: "新北市板橋區文化路一段270巷6號", phone: "+886222543579", summary: "隱身巷弄清新有質感的日式簡餐店！金黃酥脆堆得像座小山的日式炸雞，再配上韓式泡菜，超誘人搭配讓人一口接一口!", image: "勇氣食堂.jpg", isVisited: false),
        Restaurant(name: "G+9鮮釀餐廳", type: "Bar", location: "220新北市板橋區國光路232號", phone: "+886229651900", summary: "平價好吃的餐酒館！地點方便，位置也滿靠火車站的。當月壽星有招待一杯飲料，可選擇無酒精或店家限定的幾種啤酒。", image: "G+9.jpg", isVisited: false)
       ]
    }
       
}


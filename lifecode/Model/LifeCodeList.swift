//
//  LifeCodeList.swift
//  lifecode
//
//  Created by yousun on 2021/5/9.
//

import Foundation


// 自訂一個 struct 設定加入的型別
struct numerology {
    
    var words :String?
    
    var strengths :String?
    
    var weaknesses :String?
}


// 用 Array 的方式加入資料
var LifeCodes : [numerology] = [numerology(words: "(0)",strengths: "0", weaknesses: "0"),
    numerology(words: "(自主)",strengths: "獨立、積極、創造、領導、能量。\n富創意與理解力，為人聰明，喜歡領導", weaknesses: "強勢、獨斷、浮躁、自私、懶散、吹牛。\n主觀意識強，我行我素，人際關係淡薄"),
    numerology(words: "(成全)",strengths: "敏感、體貼、柔順、和諧、依賴。\n個性內斂，善於分工合作，重視群體關係，喜歡受到別人肯定", weaknesses: "情緒不定、優柔寡斷、難以捉摸、膚淺不安。\n容易因他人的意見而受到影響，不能忍耐孤獨"),
    numerology(words: "(創意)",strengths: "行動、樂觀、自信、表現、社交。\n聰明機警，有創意，多具有藝術天份，表達能力強", weaknesses: "欺瞞、虛榮浮華、憤世嫉俗、渙散不集中。\n任性，多只依自己的喜好行事，容易好高騭遠"),
    numerology(words: "(務實)",strengths: "忠誠、次序、效率、助人、自律。\n組織能力強，做事條理分明，目光敏銳，能迅速掌握重點", weaknesses: "獨斷獨行、心胸狹窄、容易緊張、不易妥協。\n固執，缺乏安全感，不敢承擔風險，因此容易讓機會溜走"),
    numerology(words: "(自由)",strengths: "聰穎、冒險、適應強、多變化、學習快。\n能答善辯，口才極佳，熱情豪爽，講義氣，崇尚自由", weaknesses: "博而不精、持續力差、毫不在乎、索求無度。\n不喜歡受到束縛，容易放縱，容易得罪別人"),
    numerology(words: "(責任)",strengths: "穩定、信賴、熱情、正義、奉獻。\n情感細膩，擅長人際間的交際，喜歡幫助他人，重承諾與責任", weaknesses: "缺乏自信、不切實際、好強爭辯、強行干涉。\n不理智時，常會做出錯誤的決定，付出不求回報時容易讓自己受傷"),
    numerology(words: "(探究)",strengths: "內省、沉默、直覺、真理、理想。\n擅長鑽研事物，喜歡追求真理，精於算計，遇事理智", weaknesses: "冷漠、自大傲慢、自我放縱、鬼鬼祟祟。\n處事不夠圓滑，不容易被討好，容易到手的東西不會珍惜"),
    numerology(words: "(權威)",strengths: "忠貞、持續、堅定、誠懇、照料。\n喜歡冒險刺激，有商業頭腦，喜歡追求權力，能即知即行", weaknesses: "唯物主義、無道德感、心高氣傲、排除他議。\n驕傲，對喜歡的東西有異常的執著，面對衝突時會勉強自己"),
    numerology(words: "(可親)",strengths: "人性、啟發、活力、關懷、靈性。\n充滿生命力，能從創意之中獲得滿足感，處事隨機應變，見招拆招", weaknesses: "卑躬屈膝、毫無原則、善於批評、沒有耐性。\n行事不務實，意志不夠堅定，想像太過於力豐富則會變成天馬行空"),
]


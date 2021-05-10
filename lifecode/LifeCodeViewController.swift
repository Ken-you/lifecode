//
//  ViewController.swift
//  lifecode
//
//  Created by yousun on 2021/5/8.
//

import UIKit


class LifeCodeViewController: UIViewController {

    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var monthLabel: UILabel!
    
    @IBOutlet weak var monthImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // 產生動物圖片的按鈕
    @IBAction func AnimalBtn(_ sender: Any) {
        animal()
    }
    
    
    // 利用 property 把資料傳到下一頁
    @IBSegueAction func showResult(_ coder: NSCoder) -> resultViewController? {
                
        let controller =  resultViewController(coder: coder)
        
        // .number 是對應下一個頁面的 var number :Int!
        controller?.number = code()
        
        return controller
    }
    
    
    // 重啟，日期回到今天
    @IBAction func resetBtn(_ sender: Any) {
    
        DatePicker.setDate(Date(), animated: true)
        
        monthLabel.text = "? 月  代表動物：？?"
        
        monthImageView.image = UIImage(named: "knowledge")
    }
    

    // datepicker 抓取月份並設定圖片
    func animal() {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "M"
        
        let animal = dateFormatter.string(from: DatePicker.date)
        
        switch animal {
        
        case "1":
            monthLabel.text = "1 月  代表動物：北極熊"
            monthImageView.image = UIImage(named: "Polar bear")
        case "2":
            monthLabel.text = "2 月  代表動物：海豚"
            monthImageView.image = UIImage(named: "dolphin")
        case "3":
            monthLabel.text = "3 月  代表動物：獵豹"
            monthImageView.image = UIImage(named: "panther")
        case "4":
            monthLabel.text = "4 月  代表動物：大象"
            monthImageView.image = UIImage(named: "elephant")
        case "5":
            monthLabel.text = "5 月  代表動物：猴子"
            monthImageView.image = UIImage(named: "money")
        case "6":
            monthLabel.text = "6 月  代表動物：鹿"
            monthImageView.image = UIImage(named: "dear")
        case "7":
            monthLabel.text = "7 月  代表動物：獅子"
            monthImageView.image = UIImage(named: "lion")
        case "8":
            monthLabel.text = "8 月  代表動物：浣熊"
            monthImageView.image = UIImage(named: "raccoon")
        case "9":
            monthLabel.text = "9 月  代表動物：天鵝"
            monthImageView.image = UIImage(named: "swan")
        case "10":
            monthLabel.text = "10 月  代表動物：馬"
            monthImageView.image = UIImage(named: "horse")
        case "11":
            monthLabel.text = "11 月  代表動物：狼"
            monthImageView.image = UIImage(named: "wolf")
        case "12":
            monthLabel.text = "12 月  代表動物：鷹"
            monthImageView.image = UIImage(named: "eagle")
        default:
            break
        }
        
    }
    
    
    // 算生命靈數的迴圈，回傳Int，再設定給下一個頁面
    func code() -> Int{
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yMd"
        
        var Code = dateFormatter.string(from: DatePicker.date)
        
        var sum = 0
        
        repeat {
            
            sum = 0
            
            for i in Code{
                
                let number = Int(String(i))
                
                sum += number!
            }
            
            Code = "\(sum)"
            
        }while sum > 9
            
         return sum
    }
}


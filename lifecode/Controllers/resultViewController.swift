//
//  resultViewController.swift
//  
//
//  Created by yousun on 2021/5/9.
//

import UIKit

class resultViewController: UIViewController {
    
    // 與前一頁 property 相對應的 .number
    var number :Int!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var strengthsLabel: UILabel!
    
    @IBOutlet weak var weaknessesLabel: UILabel!
    
    @IBOutlet weak var colorImageView: UIImageView!
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        color()
    }
 
    
    // 帶入number，呼叫寫在 Model 裡的 LifrCode[]
    func updateUI() {
        
        numberLabel.text = "\(Int(number))"
        
        wordLabel.text = LifeCodes[number].words
        
        strengthsLabel.text = LifeCodes[number].strengths
        
        weaknessesLabel.text = LifeCodes[number].weaknesses
    }
    
    
    // 設定生命靈數的代表色
    func color() {
        switch number {
        case 1:
            colorImageView.backgroundColor = .red
            colorNameLabel.text = "代表色：紅色"
        case 2:
            colorImageView.backgroundColor = .orange
            colorNameLabel.text = "代表色：橘色"
        case 3:
            colorImageView.backgroundColor = .yellow
            colorNameLabel.text = "代表色：黃色"
        case 4:
            colorImageView.backgroundColor = .green
            colorNameLabel.text = "代表色：綠色"
        case 5:
            colorImageView.backgroundColor = .blue
            colorNameLabel.text = "代表色：藍色"
        case 6:
            colorImageView.backgroundColor = .systemIndigo
            colorNameLabel.text = "代表色：靛青色"
        case 7:
            colorImageView.backgroundColor = .purple
            colorNameLabel.text = "代表色：紫色"
        case 8:
            colorImageView.backgroundColor = UIColor(red: 1, green: 191/255, blue: 0, alpha: 1)
            colorNameLabel.text = "代表色：金色"
        case 9:
            colorImageView.backgroundColor = .white
            colorNameLabel.text = "代表色：白色"
        default:
            break
        }
    }
}

//
//  ViewController.swift
//  Slider-兔子愛你最好的距離
//
//  Created by Rose on 2021/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var closerSlider: UISlider!
    @IBOutlet weak var bunny: UIImageView!
    @IBOutlet weak var carrots: UIImageView!
    @IBOutlet weak var moon: UIImageView!
    @IBOutlet weak var happy: UIImageView!
    //測試數值用
    @IBOutlet weak var numberlabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 測試座標
        //bunny.frame.origin = CGPoint(x: 200, y: 50)
        //carrots.frame.origin.x = 0
        //起點
        updateLocation(degrees: 270)
        
    }
    
    // 改變座標
    @IBAction func closer(_ sender: UISlider) {
        
        //變整數
        //sender.value.round()
        //print(Int(sender.value))
        // 校正半圓與兔子蘿蔔的座標差距
        let speed = sender.value * 0.655
        
        numberlabel.text = String(sender.value)
        bunny.frame.origin.x = CGFloat(127 + speed)
        carrots.frame.origin.x = CGFloat(697 - speed)
        
        // 透明音符
        happy.alpha = CGFloat(sender.value/360)
        
        //月亮上升半圓
        updateLocation(degrees: CGFloat(sender.value/2)+270)
    }
    
    
    //起點
    func updateLocation(degrees: CGFloat) {
        moon.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi/180*degrees).translatedBy(x: 0, y: -341)
        //numberlabel.text = "\(Int(degrees))"
    }
    
    

}


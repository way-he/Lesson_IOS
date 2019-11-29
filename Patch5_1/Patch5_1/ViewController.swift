//
//  ViewController.swift
//  Patch5_1
//
//  Created by 何偉綸 on 2019/11/22.
//  Copyright © 2019 何偉綸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var date = 1990

    @IBOutlet weak var mImageView: UIImageView!
    
    @IBOutlet weak var mSilder: UISlider!
    @IBOutlet weak var mDate: UIDatePicker!
    @IBOutlet weak var mYear: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mDate.isEnabled = false
    }


    @IBAction func selectedDate(_ sender: UISlider) {
        
        mYear.text = (date + Int(sender.value)).description
        changeImahe((date + Int(sender.value)).description)
       
    }
    

    @IBAction func valueChange(_ sender: UIDatePicker) {
        let date =    sender.date;  //获取UIDatePicker选择的值
        let dateFormatter = DateFormatter()  //获取DateFormatter
        dateFormatter.dateFormat = "yyyy"  //设置时间格式
        let age = dateFormatter.string(from: date)  //转化日期
        mYear.text = age
        changeImahe(age)
        print(age)  //成功获取日期
    }
    
    func changeImahe(_ imageName:String){
        mImageView.image = UIImage(named: imageName)
    }
    @IBAction func changeMoudle(_ sender: UISwitch) {
        if sender.isOn{
            mDate.isEnabled = false
            mSilder.isEnabled = true
            print("123")
        }else{
            mDate.isEnabled = true
            mSilder.isEnabled = false
            print("321")
        }
    }
}


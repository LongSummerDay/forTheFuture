//
//  BusinessVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/23.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class BusinessVC: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextViewDelegate {
    
    @IBOutlet weak var typeSelector: UIPickerView!
    @IBOutlet weak var buyOrSellSelector: UIPickerView!
    @IBOutlet weak var customer: UITextView!
    @IBOutlet weak var number: UITextView!
    @IBOutlet weak var price: UITextView!
    @IBOutlet weak var date: UIDatePicker!
    
    
    
    let type = ["NB","S","M","L","XL","XXL"]
    let buyOrSell = ["BUY","SELL"]
    var typeName :String!
    var buyOrSellFlag :Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeSelector.dataSource = self
        typeSelector.delegate = self
        buyOrSellSelector.dataSource = self
        buyOrSellSelector.delegate = self
        customer.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.accessibilityIdentifier == "TypeSelector" {
            return type.count
        } else if pickerView.accessibilityIdentifier == "BuyOrSellFlag" {
            return buyOrSell.count
        } else {
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.accessibilityIdentifier == "TypeSelector" {
            return type[row]
        } else if pickerView.accessibilityIdentifier == "BuyOrSellFlag" {
            return buyOrSell[row]
        } else {
            return "NULL"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.accessibilityIdentifier == "TypeSelector" {
            typeName = type[row]
        } else if pickerView.accessibilityIdentifier == "BuyOrSellFlag" {
            if buyOrSell[row] == "BUY" {
                buyOrSellFlag = true //购入货品该标志置true
            } else {
                buyOrSellFlag = false //销售货品该标志置false
            }
        }
    }
    //获取用户填写的所有值并且写入数据库
    @IBAction func save(_ sender: UIButton) {
        let business = Business(context:context)
        business.type = typeName
        business.buyOrSellFlag = buyOrSellFlag
//        business.number = number.text
//        business.price = Double(price.text)
        business.target = customer.text
        business.date = date.date as NSDate?
        ad.saveContext()
    }
    
    @IBAction func clear(_ sender: UIButton) {
    }
    //下面这段修改键盘遮挡的代码好像没啥用
    /*解决键盘遮挡textview*/
    func textViewDidBeginEditing(_ textView: UITextView) {
        let frame:CGRect = textView.frame
        let offset:CGFloat = frame.origin.y + 100 - (self.view.frame.size.height - 330)
        
        if offset > 0 {
            self.view.frame = CGRect(x: 0.0, y: -offset, width: self.view.frame.size.width, height: self.view.frame.size.height)
        }
    }
    /*恢复屏幕视图*/
    func textViewDidEndEditing(_ textView: UITextView) {
        self.view.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
    }
    /*隐藏键盘，实测有效*/
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.customer.resignFirstResponder()
    }
    

}

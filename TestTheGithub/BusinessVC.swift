//
//  BusinessVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/23.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class BusinessVC: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var typeSelector: UIPickerView!
    @IBOutlet weak var buyOrSellFlag: UIPickerView!
    
    let type = ["NB","S","M","L","XL","XXL"]
    let buyOrSell = ["BUY","SELL"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeSelector.dataSource = self
        typeSelector.delegate = self
        buyOrSellFlag.dataSource = self
        buyOrSellFlag.delegate = self
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

}

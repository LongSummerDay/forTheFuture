//
//  BusinessVC2.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/26.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class BusinessVC2: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var typeSelector: UIPickerView!
    @IBOutlet weak var number: UITextView!
    @IBOutlet weak var price: UITextView!
    @IBOutlet weak var buyOrSellSelector: UIPickerView!
    @IBOutlet weak var customer: UITextView!
    @IBOutlet weak var dateSelector: UIDatePicker!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    
    var contentWidth : CGFloat = 0.0
    var contentHeight : CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        contentWidth = self.view.frame.width
        contentHeight = image.frame.size.height + typeSelector.frame.size.height + number.frame.size.height + price.frame.size.height + buyOrSellSelector.frame.size.height + customer.frame.size.height + dateSelector.frame.size.height + saveBtn.frame.size.height + CGFloat(100) //不是很明白为什么这里要加100，不加的话还是没法滑动
        mainScrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
    }

}

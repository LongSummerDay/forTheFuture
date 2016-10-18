//
//  CalculatorVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/18.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var titleLab: UILabel!
    private var _titleInfo:String!
    
    var titleInfo: String {
        get {
            return _titleInfo
        }
        set {
            _titleInfo = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLab.text = _titleInfo!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

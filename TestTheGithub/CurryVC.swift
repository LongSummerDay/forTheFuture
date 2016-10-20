//
//  CurryVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/18.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class CurryVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func openOnepiece(_ sender: UIButton) {
    }

    //go to the calculator screen with the generic segue
    @IBAction func openCalculator(_ sender: AnyObject) {
        let screenTitle = "This is the calculator"
        performSegue(withIdentifier: "goCalculator", sender: screenTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CalculatorVC {
            if let title = sender as? String {
                destination.titleInfo = title
            }
        }
    }

}

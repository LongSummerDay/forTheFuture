//
//  VideoVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/20.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webVideo: UIWebView!
    
    private var _onepieceData : OnepieceData!
    
    var onepieceData :OnepieceData {
        get {
            return _onepieceData
        }
        set {
            _onepieceData = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webVideo.loadHTMLString(onepieceData.vedioURL, baseURL: nil)
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

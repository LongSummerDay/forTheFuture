//
//  ViewController.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/14.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    let iconName : [Int:String] =
        [0:"baseball",
         1:"golf",
         2:"soccer",
         3:"tennis",
         4:"volleyball"]
    
    var images = [UIImageView]()
    var contentWidth : CGFloat = 0.0
    var contentHeight : CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for index in 0..<iconName.count {
            let image = UIImage(named: "\(iconName[index]!)-icon.png")
            print("\(iconName[index]!)-icon.png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
                
            mainScrollView.addSubview(imageView)
                
            let newX :CGFloat = mainScrollView.frame.size.width / 2 + mainScrollView.frame.size.width * CGFloat(index)
            let newY :CGFloat = mainScrollView.frame.size.height / 2
            
            print("mainScrollViewMidX: \(mainScrollView.frame.midX)")
            print("mainScrollViewWidth: \(mainScrollView.frame.size.width)")
            print("mainScrollViewMidY: \(mainScrollView.frame.midY)")
            print("mainScrollViewHeight: \(mainScrollView.frame.size.height)")
            print("newX :\(newX) and newY:\(newY)")
            
            imageView.frame = CGRect(x: newX-50, y: newY-50, width: 100, height: 100)
        }
        print("Count: \(images.count)")
        contentWidth = mainScrollView.frame.size.width * CGFloat(iconName.count)
        contentHeight = mainScrollView.frame.size.height
        mainScrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
    }


}


//
//  OnepieceTVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/20.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class OnepieceTVC: UITableViewCell {

    @IBOutlet weak var vedioPreview: UIImageView!
    @IBOutlet weak var vedioTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(onepieceData :OnepieceData) {
        vedioTitle.text = onepieceData.vedioTitle
        
        //let imageURL = URL(fileURLWithPath: onepieceData.imageURL)
        let imageURL = URL(string: onepieceData.imageURL)!
        DispatchQueue.global().async {
            do {
                let imageData = try Data(contentsOf: imageURL)
                DispatchQueue.global().sync {
                    self.vedioPreview.image = UIImage(data: imageData)
                }
            }catch {
                //handle the error
            }
        }
    }

}

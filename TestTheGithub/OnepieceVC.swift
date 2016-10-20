//
//  OnepieceVC.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/20.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import UIKit

class OnepieceVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview : UITableView!
    var onepieceDatas = [OnepieceData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vedioURL1 = "<embed src=\"http://player.video.qiyi.com/4235a1162c6a246df849e902950aa642/0/5631/v_19rr9a8i4s.swf-albumId=554429600-tvId=554429600-isPurchase=1-cnId=1\" quality=\"high\" width=\"480\" height=\"400\" align=\"middle\" allowScriptAccess=\"always\" type=\"application/x-shockwave-flash\"></embed>"
        let imageURL1 = "http://pic.baike.soso.com/p/20140310/20140310143207-1620991349.jpg"
        let o1 = OnepieceData(vedioTitle:"lufei",vedioURL:vedioURL1,imageURL:imageURL1)
        onepieceDatas.append(o1)
        
        let vedioURL2 = "http://player.video.qiyi.com/4235a1162c6a246df849e902950aa642/0/5631/v_19rr9a8i4s.swf-albumId=554429600-tvId=554429600-isPurchase=1-cnId=1"
        let imageURL2 = "http://img5q.duitang.com/uploads/item/201503/30/20150330130838_CLvRa.thumb.700_0.jpeg"
        let o2 = OnepieceData(vedioTitle:"zuoluo",vedioURL:vedioURL2,imageURL:imageURL2)
        onepieceDatas.append(o2)
        
        let vedioURL3 = "<iframe height=498 width=510 src='http://player.youku.com/embed/XMTUyOTc2NDk4MA==' frameborder=0 'allowfullscreen'></iframe>"
        let imageURL3 = "http://img4.duitang.com/uploads/item/201405/25/20140525150630_sENdB.jpeg"
        let o3 = OnepieceData(vedioTitle:"shanzhi",vedioURL:vedioURL3,imageURL:imageURL3)
        onepieceDatas.append(o3)
        
        let vedioURL4 = "<iframe height=498 width=510 src='http://player.youku.com/embed/XMTY3MzE5NjI2OA==' frameborder=0 'allowfullscreen'></iframe>"
        let imageURL4 = "http://img5.duitang.com/uploads/item/201409/07/20140907233203_vRzG8.thumb.700_0.jpeg"
        let o4 = OnepieceData(vedioTitle:"nami",vedioURL:vedioURL4,imageURL:imageURL4)
        onepieceDatas.append(o4)
        
        
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: "BestVedios", for: indexPath) as? OnepieceTVC { //the identifier is set in the cell
            let onepieceData = onepieceDatas[indexPath.row]
            cell.updateUI(onepieceData: onepieceData)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return onepieceDatas.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let onepieceData = onepieceDatas[indexPath.row]
        
        performSegue(withIdentifier: "vedioVCSegue", sender: onepieceData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let onepiece = sender as? OnepieceData {
                destination.onepieceData = onepiece
            }
        }
    }
}

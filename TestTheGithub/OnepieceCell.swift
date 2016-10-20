//
//  OnepieceCell.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/20.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import Foundation

class OnepieceData {
    private var _vedioTitle: String!
    private var _vedioURL: String!
    private var _imageURL: String!
    
    var vedioTitle :String {
        return _vedioTitle
    }
    
    var vedioURL: String {
        return _imageURL
    }
    
    var imageURL: String {
        return _imageURL
    }
    
    init(vedioTitle:String,vedioURL:String,imageURL:String) {
        _vedioURL = vedioURL
        _vedioTitle = vedioTitle
        _imageURL = imageURL
    }
}

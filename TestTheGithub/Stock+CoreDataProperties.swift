//
//  Stock+CoreDataProperties.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/22.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import Foundation
import CoreData


extension Stock {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stock> {
        return NSFetchRequest<Stock>(entityName: "Stock");
    }

    @NSManaged public var type: String?
    @NSManaged public var number: Int32

}

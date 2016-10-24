//
//  Business+CoreDataProperties.swift
//  TestTheGithub
//
//  Created by 雷夏鋒 on 2016/10/22.
//  Copyright © 2016年 雷夏鋒. All rights reserved.
//

import Foundation
import CoreData


extension Business {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Business> {
        return NSFetchRequest<Business>(entityName: "Business");
    }

    @NSManaged public var type: String?
    @NSManaged public var number: Int32
    @NSManaged public var date: NSDate?
    @NSManaged public var price: Double
    @NSManaged public var buyOrSellFlag: Bool //true for buy and false for sell
    @NSManaged public var target: String?

}

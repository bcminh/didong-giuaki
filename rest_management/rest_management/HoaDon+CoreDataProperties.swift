//
//  HoaDon+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension HoaDon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HoaDon> {
        return NSFetchRequest<HoaDon>(entityName: "HoaDon");
    }

    @NSManaged public var ngayTao: NSDate?
    @NSManaged public var tongTien: Float
    @NSManaged public var trangThai: Int16
    @NSManaged public var ban: BanAn?

}

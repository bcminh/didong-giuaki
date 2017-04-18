//
//  ThongKe_SoLuong+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension ThongKe_SoLuong {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ThongKe_SoLuong> {
        return NSFetchRequest<ThongKe_SoLuong>(entityName: "ThongKe_SoLuong");
    }

    @NSManaged public var soLuong: Int16
    @NSManaged public var ngayBan: NSDate?
    @NSManaged public var mon: Mon?

}

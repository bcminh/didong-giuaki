//
//  HinhAnh+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension HinhAnh {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HinhAnh> {
        return NSFetchRequest<HinhAnh>(entityName: "HinhAnh");
    }

    @NSManaged public var source: String?
    @NSManaged public var type: Int16

}

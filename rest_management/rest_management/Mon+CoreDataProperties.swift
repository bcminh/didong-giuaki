//
//  Mon+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension Mon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mon> {
        return NSFetchRequest<Mon>(entityName: "Mon");
    }

    @NSManaged public var ten: String?
    @NSManaged public var gia: Float
    @NSManaged public var moTa: String?
    @NSManaged public var hinhAnhs: NSSet?
    @NSManaged public var loaiMon: LoaiMon?

}

// MARK: Generated accessors for hinhAnhs
extension Mon {

    @objc(addHinhAnhsObject:)
    @NSManaged public func addToHinhAnhs(_ value: HinhAnh)

    @objc(removeHinhAnhsObject:)
    @NSManaged public func removeFromHinhAnhs(_ value: HinhAnh)

    @objc(addHinhAnhs:)
    @NSManaged public func addToHinhAnhs(_ values: NSSet)

    @objc(removeHinhAnhs:)
    @NSManaged public func removeFromHinhAnhs(_ values: NSSet)

}

//
//  BanAn+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension BanAn {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BanAn> {
        return NSFetchRequest<BanAn>(entityName: "BanAn");
    }

    @NSManaged public var moTa: String?
    @NSManaged public var ten: String?
    @NSManaged public var trangThai: Bool
    @NSManaged public var hinhAnhs: NSSet?
    @NSManaged public var khuVuc: KhuVuc?

}

// MARK: Generated accessors for hinhAnhs
extension BanAn {

    @objc(addHinhAnhsObject:)
    @NSManaged public func addToHinhAnhs(_ value: HinhAnh)

    @objc(removeHinhAnhsObject:)
    @NSManaged public func removeFromHinhAnhs(_ value: HinhAnh)

    @objc(addHinhAnhs:)
    @NSManaged public func addToHinhAnhs(_ values: NSSet)

    @objc(removeHinhAnhs:)
    @NSManaged public func removeFromHinhAnhs(_ values: NSSet)

}

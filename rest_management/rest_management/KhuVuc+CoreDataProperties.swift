//
//  KhuVuc+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension KhuVuc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<KhuVuc> {
        return NSFetchRequest<KhuVuc>(entityName: "KhuVuc");
    }

    @NSManaged public var moTa: String?
    @NSManaged public var ten: String?
    @NSManaged public var banAns: NSSet?
    @NSManaged public var hinhAnhs: NSSet?

}

// MARK: Generated accessors for banAns
extension KhuVuc {

    @objc(addBanAnsObject:)
    @NSManaged public func addToBanAns(_ value: BanAn)

    @objc(removeBanAnsObject:)
    @NSManaged public func removeFromBanAns(_ value: BanAn)

    @objc(addBanAns:)
    @NSManaged public func addToBanAns(_ values: NSSet)

    @objc(removeBanAns:)
    @NSManaged public func removeFromBanAns(_ values: NSSet)

}

// MARK: Generated accessors for hinhAnhs
extension KhuVuc {

    @objc(addHinhAnhsObject:)
    @NSManaged public func addToHinhAnhs(_ value: HinhAnh)

    @objc(removeHinhAnhsObject:)
    @NSManaged public func removeFromHinhAnhs(_ value: HinhAnh)

    @objc(addHinhAnhs:)
    @NSManaged public func addToHinhAnhs(_ values: NSSet)

    @objc(removeHinhAnhs:)
    @NSManaged public func removeFromHinhAnhs(_ values: NSSet)

}

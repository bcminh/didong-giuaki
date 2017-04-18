//
//  LoaiMon+CoreDataProperties.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


extension LoaiMon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoaiMon> {
        return NSFetchRequest<LoaiMon>(entityName: "LoaiMon");
    }

    @NSManaged public var ten: String?
    @NSManaged public var mons: NSSet?

}

// MARK: Generated accessors for mons
extension LoaiMon {

    @objc(addMonsObject:)
    @NSManaged public func addToMons(_ value: Mon)

    @objc(removeMonsObject:)
    @NSManaged public func removeFromMons(_ value: Mon)

    @objc(addMons:)
    @NSManaged public func addToMons(_ values: NSSet)

    @objc(removeMons:)
    @NSManaged public func removeFromMons(_ values: NSSet)

}

//
//  HoaDon+CoreDataClass.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


public class HoaDon: NSManagedObject {
    static let entityName = "HoaDon"
    
    // Get all
    static func getAll() -> [NSManagedObject] {
        let fetchRequest: NSFetchRequest<NSManagedObject> = NSFetchRequest(entityName: entityName)
        
        do{
            let result = try DB.MOC.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult>) as! [NSManagedObject]
            
            return result
        } catch let error as NSError{
            print("Cannot get all from entity \(entityName), error: \(error), \(error.userInfo)")
            return []
        }
    }
    
    // Create
    static func create() -> NSManagedObject {
        return NSEntityDescription.insertNewObject(forEntityName: entityName, into: DB.MOC)
    }
}

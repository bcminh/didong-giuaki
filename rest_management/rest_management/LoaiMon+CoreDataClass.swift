//
//  LoaiMon+CoreDataClass.swift
//  rest_management
//
//  Created by Hung Vu on 4/18/17.
//  Copyright © 2017 lactroi. All rights reserved.
//

import Foundation
import CoreData


public class LoaiMon: NSManagedObject {
    static let entityName = "LoaiMon"
    
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
    
    // Get by name
    static func getByName(ten name:String) -> Mon? {
        let fetchRequest: NSFetchRequest<NSManagedObject> = NSFetchRequest(entityName: entityName)
        
        // Condition
        fetchRequest.predicate = NSPredicate(format: "ten == ", name)
        
        do{
            if let result = try DB.MOC.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult>) as? [Mon] {
                if (result.count > 0){
                    return result[0]
                }
                
                return nil
            }
        } catch let error as NSError{
            print("Cannot get LoaiMon by name, \(error), \(error.userInfo)")
        }
        
        return nil
    }
    
    // Insert
    static func insert(ten name:String) -> LoaiMon? {
        let mon = create() as! LoaiMon
        
        mon.ten = name
        
        do {
            try DB.MOC.save()
            
            return mon
        } catch let error as NSError{
            print("Cannot insert LoaiMon, \(error), \(error.userInfo)");
        }
        
        return nil
    }
}

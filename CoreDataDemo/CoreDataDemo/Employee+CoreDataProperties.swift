//
//  Employee+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by 山不在高 on 2018/3/1.
//  Copyright © 2018年 山不在高. All rights reserved.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?
    @NSManaged public var sex: Bool
    @NSManaged public var age: Int64

}

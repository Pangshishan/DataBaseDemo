//
//  PersonInfo+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by 山不在高 on 2018/3/1.
//  Copyright © 2018年 山不在高. All rights reserved.
//
//

import Foundation
import CoreData


extension PersonInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonInfo> {
        return NSFetchRequest<PersonInfo>(entityName: "PersonInfo")
    }


}

//
//  SchoolDataManager.swift
//  CoreDataDemo
//
//  Created by pangshishan on 2018/3/6.
//  Copyright © 2018年 山不在高. All rights reserved.
//

import UIKit

class SchoolDataManager: NSObject {
    
    static let defaultManager = SchoolDataManager()
    
    fileprivate var objModel: nsmanager
    
    private override init() {
        super.init()
    }
    
}

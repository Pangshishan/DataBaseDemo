//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by 山不在高 on 2018/3/1.
//  Copyright © 2018年 山不在高. All rightsreserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let schoolVC = SchoolViewController()
        self.present(schoolVC, animated: true, completion: nil)
    }
}


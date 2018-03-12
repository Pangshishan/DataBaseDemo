//
//  SchoolTableViewCell.swift
//  CoreDataDemo
//
//  Created by pangshishan on 2018/3/2.
//  Copyright © 2018年 山不在高. All rights reserved.
//

import UIKit

class SchoolTableViewCell: UITableViewCell {

    // 10 + 15 + 15 + 15 + 10
    @objc var nameLabel: UILabel!// = UILabel()
    @objc var sexLabel: UILabel!// = UILabel()
    @objc var ageLabel: UILabel!// = UILabel()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupUI() {
        self.selectionStyle = .none
        let arr = ["nameLabel", "sexLabel", "ageLabel"]
        for i in 0..<3 {
            let label = UILabel.init(frame: CGRect.init(x: 10, y: 10 + i * 15, width: 200, height: 15))
            self.contentView.addSubview(label)
            label.textAlignment = .left
            label.text = arr[i]
            label.textColor = UIColor.black
            label.font = UIFont.systemFont(ofSize: 13)
            self.setValue(arr[i], forKey: arr[i])
        }
    }
}



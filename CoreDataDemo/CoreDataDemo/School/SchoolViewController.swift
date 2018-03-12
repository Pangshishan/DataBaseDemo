//
//  SchoolViewController.swift
//  CoreDataDemo
//
//  Created by pangshishan on 2018/3/2.
//  Copyright © 2018年 山不在高. All rights reserved.
//

import UIKit

class SchoolViewController: UIViewController {

    fileprivate var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.extendedLayoutIncludesOpaqueBars = false
        self.automaticallyAdjustsScrollViewInsets = false;
        setupUI()
    }
    
}

// MARK:- UI
extension SchoolViewController {
    
    fileprivate func setupUI() {
        addTableView()
        addBtns()
    }
    fileprivate func addTableView() {
        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 40), style: .plain)
        self.view.addSubview(tableView!)
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView.separatorStyle = .none
        tableView?.register(SchoolTableViewCell.self, forCellReuseIdentifier: "SchoolTableViewCell")
    }
    fileprivate func addBtns() {
        let button1 = UIButton.init(type: .custom)
        view.addSubview(button1)
        button1.backgroundColor = UIColor.red
        button1.setTitleColor(UIColor.white, for: .normal)
        button1.setTitle("插入一条", for: .normal)
        button1.addTarget(self, action: #selector(clickAddButton), for: .touchUpInside)
        button1.frame = CGRect.init(x: 0, y: UIScreen.main.bounds.size.height - 40, width: UIScreen.main.bounds.size.width / 2, height: 40);
        
        let button2 = UIButton.init(type: .custom)
        view.addSubview(button2)
        button2.backgroundColor = UIColor.blue
        button2.setTitleColor(UIColor.white, for: .normal)
        button2.setTitle("全部删除", for: .normal)
        button2.addTarget(self, action: #selector(clickDeleteAll), for: .touchUpInside)
        button2.frame = CGRect.init(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height - 40, width: UIScreen.main.bounds.size.width / 2, height: 40);
    }
}

// MARK:- Private
extension SchoolViewController {
    @objc fileprivate func clickAddButton() {
        
    }
    @objc fileprivate func clickDeleteAll() {
        
    }
}

// MARK:- UITableView Delegate and DataSource
extension SchoolViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SchoolTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SchoolTableViewCell", for: indexPath) as! SchoolTableViewCell
        // cell.textLabel?.text = "\(indexPath.row)"
        cell.nameLabel.text = "\(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}







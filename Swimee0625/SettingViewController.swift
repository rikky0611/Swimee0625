//
//  ViewController.swift
//  Swimee0625
//
//  Created by 荒川陸 on 2016/06/24.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit

protocol FinishEditingFromSettingVCDelegate: class {
    func finishEditingFromSettingVC(newText: String)
}

final class SettingViewController: UIViewController, FinishEditingDelegate {
    @IBOutlet weak var tableView: UITableView!
    private var user: User!
    weak var delegate: FinishEditingFromSettingVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //initialize user
        user = User.loginUser
        
        //tableViewSetting
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorInset = UIEdgeInsetsZero
        tableView.layoutMargins = UIEdgeInsetsZero
        tableView.registerNib(UINib(nibName: String(nameSettingCell.self), bundle: nil),
                              forCellReuseIdentifier: "nameSettingCell")
    }
    
    @IBAction func back() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func finishEditing(newText: String) {
        delegate?.finishEditingFromSettingVC(newText)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: TableViewDelegate, TableViewDataSource

extension SettingViewController: UITableViewDelegate,UITableViewDataSource {
    
    //DataSource Method
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        
        switch indexPath.row {
        case 0:
            let newCell = tableView.dequeueReusableCellWithIdentifier("nameSettingCell", forIndexPath: indexPath) as! nameSettingCell
            newCell.delegate = self
            newCell.set(user)
            cell = newCell
        default:
            cell = UITableViewCell()
        }
        return cell
    }
    
    //Delegate Method
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.min
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.min
    }
}

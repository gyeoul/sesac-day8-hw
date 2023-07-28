//
//  Case3TableViewController.swift
//  sesac-day8-hw
//
//  Created by 박창현 on 2023.07.27.
//

import UIKit

class Case3TableViewController: UITableViewController {
    var list:[String] = []
    @IBOutlet var tableHeaderView: UIView!
    @IBOutlet var userInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableHeaderView.layer.cornerRadius = 10
    }
    
    @IBAction func addButtonAction(_ sender: UIButton){
        guard let insertText = userInputField.text else {
            return
        }
        list.append(insertText)
        userInputField.text = ""
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCell")!
        cell.textLabel?.text = "test"
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .secondarySystemFill
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

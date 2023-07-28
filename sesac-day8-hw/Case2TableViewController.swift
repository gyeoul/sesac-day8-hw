//
//  Case2TableViewController.swift
//  sesac-day8-hw
//
//  Created by 박창현 on 2023.07.27.
//

import UIKit

class Case2TableViewController: UITableViewController {
    // dictionary는 순서보장이 되지 않는다...

    let sections = ["전체설정","개인 설정","기타"]
    let rows =  [["공지사항","실험실","버전 정보"],["개인/보안","알림","채팅","멀티프로필"],["고객센터/도움말"]]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rows[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell")
        else {
            return UITableViewCell()
        }
        
        cell.textLabel?.text = rows[indexPath.section][indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

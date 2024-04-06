//
//  ViewController.swift
//  final-exam-exercise-table
//
//  Created by Default User on 4/6/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let teams = ["Barca", "Man Utd", "Man City", "Liverpool"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teams.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        tableCell.textLabel?.text = teams[indexPath.row]
        tableCell.textLabel?.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        tableCell.accessoryType = .disclosureIndicator
        return tableCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


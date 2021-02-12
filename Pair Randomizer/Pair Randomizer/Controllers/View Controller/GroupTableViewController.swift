//
//  GroupTableViewController.swift
//  Pair Randomizer
//
//  Created by Theo Davis on 2/12/21.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        GroupController.shared.persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)

        let person = GroupController.shared.persons[indexPath.row]
        

        return cell
    }

}

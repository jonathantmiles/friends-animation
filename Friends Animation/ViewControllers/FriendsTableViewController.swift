//
//  FriendsTableViewController.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.delegate = navigationControllerDelegate
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendController.friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendsTableViewCell
        
        cell.friend = friendController.friends[indexPath.row]

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! FriendDetailViewController
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        destVC.friend = friendController.friends[indexPath.row]
        
        let cell = tableView.cellForRow(at: indexPath)
        
        navigationControllerDelegate.sourceCell = cell
        
    }
    
    // MARK: - Properties
    
    let friendController = FriendController()
    let navigationControllerDelegate = NavigationControllerDelegate()
    
}

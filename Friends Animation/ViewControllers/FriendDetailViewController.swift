//
//  FriendDetailViewController.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func updateViews() {
        guard let friend = friend else { return }
        
        self.title = friend.name
        friendPicLageImage.image = friend.photo
        nameLabel.text = friend.name
        descLabel.text = friend.description
        
    }
    
    // MARK: Properties
    
    var friend: Friend?

    @IBOutlet weak var friendPicLageImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
}

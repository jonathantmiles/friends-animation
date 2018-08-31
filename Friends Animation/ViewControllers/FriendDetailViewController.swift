//
//  FriendDetailViewController.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // updateViews()
    }
    
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
            guard let friend = self.friend else { return }
            
            self.title = friend.name
            self.friendPicLageImage.image = friend.photo
            self.nameLabel.text = friend.name
            self.descLabel.text = friend.description
        
    }
    
    // MARK: Properties
    
    var friend: Friend?

    @IBOutlet weak var friendPicLageImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
}

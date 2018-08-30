//
//  FriendsTableViewCell.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Properties
    
    var friend: Friend? {
        didSet {
            friendPicImage.image = friend?.photo
            friendNameLabel.text = friend?.name
        }
    }
    
    @IBOutlet weak var friendPicImage: UIImageView!
    
    @IBOutlet weak var friendNameLabel: UILabel!
}

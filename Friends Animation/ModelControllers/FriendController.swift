//
//  FriendController.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation
import UIKit

class FriendController {
    
    init() {
        let names: [String] = ["Andrew", "William", "David"]
        let pics: [UIImage] = [#imageLiteral(resourceName: "Andrew.jpeg"), #imageLiteral(resourceName: "William.JPG"), #imageLiteral(resourceName: "David.jpg")]
        let descs: [String] = ["Roomate & Polyglot", "Genius Programmer and Chef", "Fit Vegan and Inspiration"]
        
        var index: Int = 0
        for _ in names {
            createFriend(withName: names[index], andPic: pics[index], desc: descs[index])
            index += 1
        }
    }
    
    
    func createFriend(withName name: String, andPic image: UIImage, desc description: String) {
        let friend = Friend(name: name, photo: image, description: description)
        friends.append(friend)
    }
    
    var friends: [Friend] = []
    
}

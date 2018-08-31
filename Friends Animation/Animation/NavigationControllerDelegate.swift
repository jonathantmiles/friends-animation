//
//  NavigationControllerDelegate.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if operation == .push {
            
            // set animator's properties
            animator.sourceImageView = sourceCell!.friendPicImage
            animator.sourceNameLabel = sourceCell!.friendNameLabel
            
            destinationDetailVC?.loadViewIfNeeded()
            
            animator.destinationImageView = destinationDetailVC!.friendPicLageImage
            animator.destinationNameLabel = destinationDetailVC!.nameLabel
            
        } else {
            
            destinationDetailVC?.loadViewIfNeeded()
            
            animator.sourceImageView = destinationDetailVC!.friendPicLageImage
            animator.sourceNameLabel = destinationDetailVC!.nameLabel
            
            animator.destinationImageView = sourceCell!.friendPicImage
            animator.destinationNameLabel = sourceCell!.friendNameLabel
            
        }
        
        return animator
    }
    
    // MARK: - Properties
    
    let animator = ImageTransitionAnimator()
    var sourceCell: FriendsTableViewCell?
    var destinationDetailVC: FriendDetailViewController?
}

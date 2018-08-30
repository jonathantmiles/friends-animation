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
        
        // set animator's properties
        animator.sourceCell = sourceCell
        animator.destinationDetailVC = destinationDetailVC
        
        return animator
    }
    
    // MARK: - Properties
    
    let animator = ImageTransitionAnimator()
    var sourceCell: FriendsTableViewCell?
    var destinationDetailVC: FriendDetailViewController?
}

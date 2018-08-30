//
//  ImageTransitionAnimator.swift
//  Friends Animation
//
//  Created by Jonathan T. Miles on 8/30/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import UIKit

class ImageTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        // establish destination and origin ViewControllers as well as create a view from the destination view to use during animation
        guard let fromVC = transitionContext.viewController(forKey: .from) as? FriendsTableViewController,
            let toVC = transitionContext.viewController(forKey: .to) as? FriendDetailViewController,
            let toView = transitionContext.view(forKey: .to) else { return }
        
        // get the containerView out so the animation can be mocked up onto it
        let containerView = transitionContext.containerView
        
        // hopefully pulls the correct cell out from the tableView so we can get to its properties
        guard let indexPath = fromVC.tableView.indexPathForSelectedRow,
            let cell = fromVC.tableView.cellForRow(at: indexPath) as? FriendsTableViewCell else { return }
        
        // set up view for transition purposes
        let toEndFrame = transitionContext.finalFrame(for: toVC)
        
        
        // declare original elements & implicitly unwrap
        let sourcePhotoView = cell.friendPicImage!
        let destinationPhotoView = toVC.friendPicLageImage!
        
        let sourceNameLabel = cell.friendNameLabel!
        let destinationNameLabel = toVC.nameLabel!
        
        // hide original elements
        sourcePhotoView.alpha = 0.0
        destinationPhotoView.alpha = 0.0
        
        sourceNameLabel.alpha = 0.0
        destinationNameLabel.alpha = 0.0
        
        // setup transition view by adding dummy copies of moving elements to it
        
        // dummy label
        
        // dummy image
        
        
        // setup animation by adding the dummy elements to the animation
        // remember to restore opacity of original elements
        
        
        
        let startLabelFrame = transitionContext.initialFrame(for: fromVC)
        containerView.addSubview(toView)
        
        
    }
    
}

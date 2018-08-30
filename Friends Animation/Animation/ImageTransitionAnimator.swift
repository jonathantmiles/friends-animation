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
        guard let fromVC = transitionContext.viewController(forKey: .from), // as? FriendsTableViewController,
            let toVC = transitionContext.viewController(forKey: .to), // as? FriendDetailViewController,
            let toView = transitionContext.view(forKey: .to) else { return }
        
        // get the containerView out so the animation can be mocked up onto it
        let containerView = transitionContext.containerView

        // set up view for transition purposes
        let toViewEndFrame = transitionContext.finalFrame(for: toVC)
        toView.frame = toViewEndFrame
        toView.alpha = 0.0
        containerView.addSubview(toView)
        
        // declare original elements & implicitly unwrap
        let sourcePhotoView = sourceCell.friendPicImage!
        let destinationPhotoView = destinationDetailVC.friendPicLageImage!
        
        let sourceNameLabel = sourceCell.friendNameLabel!
        let destinationNameLabel = destinationDetailVC.nameLabel!
        
        // hide original elements
        sourcePhotoView.alpha = 0.0
        destinationPhotoView.alpha = 0.0
        
        sourceNameLabel.alpha = 0.0
        destinationNameLabel.alpha = 0.0
        
        // setup transition view by adding dummy copies of moving elements to it
        
        // dummy label
        let nameLabelInitialFrame = containerView.convert(sourceNameLabel.bounds, from: sourceNameLabel)
        let animatedNameLabel = UILabel(frame: nameLabelInitialFrame)
        animatedNameLabel.text = sourceNameLabel.text
        animatedNameLabel.font = sourceNameLabel.font
        containerView.addSubview(animatedNameLabel)
        
        // dummy image
        let photoImageInitialFrame = containerView.convert(sourcePhotoView.bounds, from: sourcePhotoView)
        let animatedPhotoImage = UIImageView(frame: photoImageInitialFrame)
        animatedPhotoImage
        
        // setup animation by adding the dummy elements to the animation
        // remember to restore opacity of original elements
        
        
        
    }
    
    // MARK: - Properties
    
    // properties set by navigationControllerDelegate and implicitly unwrapped
    var sourceCell: FriendsTableViewCell!
    var destinationDetailVC: FriendDetailViewController!
    
}

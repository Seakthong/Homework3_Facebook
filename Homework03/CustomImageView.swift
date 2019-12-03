//
//  CustomImageView.swift
//  Homework03
//
//  Created by SQ on 12/3/19.
//  Copyright © 2019 SQ. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override var intrinsicContentSize: CGSize {
        
        if let myImage = self.image {
            
            let myImageWidth = myImage.size.width
            let myImageHeight = myImage.size.height
            let myViewWidth = self.frame.size.width
            
            let ratio = myViewWidth / myImageWidth
            let scaledHeight = myImageHeight * ratio
            print("Workd")
            return CGSize(width: myViewWidth + 0, height: scaledHeight + 50)
        }
        
        return CGSize(width: -1.0, height: -1.0)
    }

}

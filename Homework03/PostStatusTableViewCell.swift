//
//  PostStatusTableViewCell.swift
//  Homework03
//
//  Created by SQ on 12/3/19.
//  Copyright © 2019 SQ. All rights reserved.
//

import UIKit

class PostStatusTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.masksToBounds = true
        
        smallProfileImageView.layer.cornerRadius = smallProfileImageView.frame.width / 2
        smallProfileImageView.layer.masksToBounds = true
        
        profileImageView.layer.borderWidth = 1.0
        profileImageView.layer.borderColor = UIColor.red.cgColor
        
//        commentTextField.layer.cornerRadius = commentTextField.frame.height / 2
//        commentTextField.clipsToBounds = true
    }
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var reactionImageView: UIImageView!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var commentShareLabel: UILabel!
    @IBOutlet weak var smallProfileImageView: CustomImageView!
    @IBOutlet weak var commentTextField: UITextField!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

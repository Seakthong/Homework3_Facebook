//
//  PostImageTableViewCell.swift
//  Homework03
//
//  Created by SQ on 12/3/19.
//  Copyright © 2019 SQ. All rights reserved.
//

import UIKit

class PostImageTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 1.0
        profileImageView.layer.borderColor = UIColor.red.cgColor
        postImageView.layer.borderWidth = 1.0
    }

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var emojiImageView: UIImageView!
    @IBOutlet weak var likeAmountLabel: UILabel!
    @IBOutlet weak var commentShareLabel: UILabel!
    @IBOutlet weak var smallProfileImageView: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  TweetCell.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 5/30/25.
//

import UIKit

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var actionButtonStack: UIStackView!
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var displayNameText: UILabel!
    @IBOutlet weak var usernameText: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tweetBodyText: UILabel!
    
    @IBAction func replyTweetPressed(_ sender: UIButton) {
    }
    
    @IBAction func retweetPressed(_ sender: UIButton) {
    }
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  PostImageCell.swift
//  Makestagram
//
//  Created by Eric Wong on 6/13/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit

class PostImageCell: UITableViewCell {
    
    
    @IBOutlet weak var postImageCell: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

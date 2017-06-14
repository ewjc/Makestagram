//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Eric Wong on 6/13/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {
    
    static let height: CGFloat = 54

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Eric Wong on 6/13/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {
    
    weak var delegate: PostActionCellDelegate?
    static let height: CGFloat = 46
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var numberOfLikes: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    @IBAction func heartButtonTapped(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
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

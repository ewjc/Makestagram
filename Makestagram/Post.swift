//
//  Post.swift
//  Makestagram
//
//  Created by Eric Wong on 6/12/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import Foundation

class Post {
    var key: String?
    let imageURL: String
    let imageHeight: Float
    let creationDate: Date
    
    var dictValue: [String : Any] {
        let createdAgo = creationDate.timeIntervalSince1970
        
        return ["image_url" : imageURL,
                "image_height" : imageHeight,
                "created_at" : createdAgo]
    }
    
    init(imageURL: String, imageHeight: Float) {
        self.imageURL = imageURL
        self.imageHeight = imageHeight
        self.creationDate = Date()
    }
    
}

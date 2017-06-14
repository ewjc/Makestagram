//
//  Post.swift
//  Makestagram
//
//  Created by Eric Wong on 6/12/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot

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
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let imageURL = dict["image_url"] as? String,
            let imageHeight = dict["image_height"] as? Float,
            let createdAgo = dict["created_at"] as? TimeInterval
            else { return nil }
        
        self.key = snapshot.key
        self.imageURL = imageURL
        self.imageHeight = Float(imageHeight)
        self.creationDate = Date(timeIntervalSince1970: createdAgo)
    }
    
}

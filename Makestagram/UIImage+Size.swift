//
//  UIImage+Size.swift
//  Makestagram
//
//  Created by Eric Wong on 6/12/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit

extension UIImage {
    var aspectHeight: CGFloat {
        let heightRatio = size.height / 736
        let widthRatio = size.width / 414
        let aspectRatio = fmax(heightRatio, widthRatio)
        
        return size.height / aspectRatio
    }
}

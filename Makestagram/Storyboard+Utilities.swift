//
//  Storyboard+Utilities.swift
//  Makestagram
//
//  Created by Eric Wong on 6/10/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit

extension UIStoryboard {
    enum MGType: String {
        case main
        case login
        
        var filename: String {
            return rawValue.capitalized
        }
    
    }

}

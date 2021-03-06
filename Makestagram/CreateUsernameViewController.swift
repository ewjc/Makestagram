//
//  CreateUsernameViewController.swift
//  Makestagram
//
//  Created by Eric Wong on 6/9/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class CreateUsernameViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        guard let firUser = Auth.auth().currentUser,
            let username = usernameTextField.text,
            !username.isEmpty else { return }
        
        UserService.create(firUser, username: username) { (user) in
            guard let user = user else {
                // handle error
                return
            }
            
            User.setCurrent(user, writeToUserDefaults: true)
            
            let initialViewController = UIStoryboard.initialViewController(for: .main)
            self.view.window?.rootViewController = initialViewController
            self.view.window?.makeKeyAndVisible()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

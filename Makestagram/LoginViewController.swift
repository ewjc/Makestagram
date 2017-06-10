//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Eric Wong on 6/9/17.
//  Copyright © 2017 Make School Instructor. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FirebaseDatabase

typealias FIRUser = FirebaseAuth.User

class LoginViewController: UIViewController {
    
    // Properties
    let user: FIRUser? = Auth.auth().currentUser
    
    
    // Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.Segue.segueCreateUsername {
        }
    }
    
    // IBOutlets
    @IBOutlet weak var loginButton: UIButton!
    
    
    // IBActions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        guard let authUI = FUIAuth.defaultAuthUI() else { return }
        
        authUI.delegate = self as FUIAuthDelegate
        
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
        
        print("succesful tap")
    }
    
    
    //View Did Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


// FUIAuthDelegate Extension
extension LoginViewController: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
        }
        
        guard let user = user
            else { return }
        
        let userRef = Database.database().reference().child("users").child(user.uid)
        
        UserService.show(forUID: user.uid) { (user) in
            if let user = user {
                // handle existing user
                User.setCurrent(user)
                
                let storyboard = UIStoryboard(name: "Main", bundle: .main)
                if let initialViewController = storyboard.instantiateInitialViewController() {
                    self.view.window?.rootViewController = initialViewController
                    self.view.window?.makeKeyAndVisible()
                }
            } else {
                // handle new user
                self.performSegue(withIdentifier: Constants.Segue.segueCreateUsername, sender: self)
            }
        }
    }
    
}

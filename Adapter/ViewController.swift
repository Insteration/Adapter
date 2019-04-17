//
//  ViewController.swift
//  Adapter
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // refactoring guru
    
    var authService: AuthService = GoogleAuthAdapter()
    var authService2: AuthService = TwitterAuthAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        createUser(email: "user@user.com", password: "12345")
    }


    func createUser(email: String, password: String) {
        authService.login(email: email, password: password, success: { (user, token) in
            print("Auth succeeded: \(user.email), \(token.value)")
        }) { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    func createUser2(email: String, password: String) {
        authService2.login(email: email, password: password, success: { (user, token) in
            print("Auth succeeded: \(user.email), \(token.value)")
        }) { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }

}


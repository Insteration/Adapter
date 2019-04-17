//
//  TwitterAuthAdapter.swift
//  Adapter
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation


class TwitterAuthAdapter: AuthService {
    
    private var auth = TwitterAuth()
    
    // делаем публичный метод чтобы юзер мог его достать
    public func login(email: String, password: String, success: @escaping (User, Token) -> Void, failure: @escaping (Error?) -> Void) {
        
        auth.login(email: email, password: password) { (currentUser, error) in
            guard let currentUser = currentUser else {
                failure(error)
                return
            }
            
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            success(user, token)
        }
    }
}

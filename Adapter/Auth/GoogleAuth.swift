//
//  GoogleAuth.swift
//  Adapter
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

// класс для авторизации
public class GoogleAuth {
    public func login(email: String, password: String, completion: @escaping (GoogleUser?, Error?) -> Void) {
        let token = "special-token-value"
        let user = GoogleUser(email: email, password: password, token: token)
        completion(user, nil)
    }
}

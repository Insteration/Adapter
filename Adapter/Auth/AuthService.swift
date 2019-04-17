//
//  AuthService.swift
//  Adapter
//
//  Created by Artem Karmaz on 4/17/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol AuthService {
    func login(email: String, password: String, success: @escaping(User, Token) -> Void, failure: @escaping(Error?) -> Void)
}

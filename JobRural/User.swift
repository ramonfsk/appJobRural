//
//  User.swift
//  JobRural
//
//  Created by student on 27/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import Foundation

class User {
    var id: Int?
    var email: String?
    var password: String?
    
    init(id: Int, email: String, password: String){
        self.id = id
        self.email = email
        self.password = password
    }
}

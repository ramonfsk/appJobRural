//
//  Vagas.swift
//  JobRural
//
//  Created by student on 27/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import Foundation

class Jobs {
    var id: Int?
    var companyName: String?
    var office: String?
    var description: String?
    var salary: Double?
    var state: String?
    var postDate: String?
    
    init(id: Int, companyName: String, office: String, description: String, salary: Double, state: String, postDate: String) {
        self.id = id
        self.companyName = companyName
        self.office = office
        self.description = description
        self.salary = salary
        self.state = state
        self.postDate = postDate
    }
    
}

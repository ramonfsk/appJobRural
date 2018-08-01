//
//  Producer.swift
//  JobRural
//
//  Created by student on 27/07/18.
//  Copyright © 2018 Reis do Gado. All rights reserved.
//

import Foundation

class Producer: User {
    var name: String?
    var lastName: String?
    var companyName: String?
    var gender: String?
    var age: Int?
    var telephone: Int?
    var nation: String?
    var state: String?
    var city: String?
    var amountOfWorkers: Int?
    var rankGeneral: Int?
    
    init(idUser: Int, emailUser: String, passwordUser: String, typeUser: Int, name: String, lastName: String, gender: String, age: Int, telephone: Int, nation: String, state: String, amountOfWorkers: Int, rankGeneral: Int){
        self.name = name
        self.lastName = lastName
        self.gender = gender
        self.age = age
        self.telephone = telephone
        self.nation = nation
        self.state = state
        self.amountOfWorkers = amountOfWorkers
        self.rankGeneral = rankGeneral
        super.init(id: idUser, email: emailUser, password: passwordUser, type: typeUser)
    }
}

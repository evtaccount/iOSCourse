//
//  Account.swift
//  secondLesson
//
//  Created by Evgeny Evtushenko on 26/04/2018.
//  Copyright © 2018 EVT. All rights reserved.
//

import UIKit

class Account {
    var fullName: String
    var eMail: String
    var phoneNumber: String
    var birthDay: String
    var gender: String
    
    init(fullName: String, eMail: String, phoneNumber: String, birthDay: String, gender: String) {
        self.fullName = fullName
        self.eMail = eMail
        self.phoneNumber = phoneNumber
        self.birthDay = birthDay
        self.gender = gender
    }
}

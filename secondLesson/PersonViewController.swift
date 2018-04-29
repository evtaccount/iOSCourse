//
//  PersonViewController.swift
//  secondLesson
//
//  Created by Evgeny Evtushenko on 23/04/2018.
//  Copyright © 2018 EVT. All rights reserved.
//
import UIKit
import os.log
class Person: Account {
    
    var imageName: String = "account image"
    var login: String = "Mega User"
    var registrationDate: String = "12 мая 2008"
    
    init(fullName: String, eMail: String, phoneNumber: String, birthDay: String, gender: String, imageName: String, login: String, registrationDate: String) {
        
        self.imageName = imageName
        self.login = login
        self.registrationDate = registrationDate
        super.init(fullName: fullName, eMail: eMail, phoneNumber: phoneNumber, birthDay: birthDay, gender: gender)
    }
}
struct Passwords {
    let passwordOne: String
    let passwordTwo: String
}
class PersonViewController: UIViewController {
    
    @IBOutlet weak var accountViewImage: UIImageView!
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var registrationDateLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var person: Person?
    var account: Account?
    var passwords: Passwords?
    
    
    // Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadPerson()
    }
    
    func setupViewController() {
        person = Person(fullName: "Пупкин, Василий Александрович", eMail: "pupok@gmail.com", phoneNumber: "+7 (999) 999-99-99", birthDay: "01 декабря 1980", gender: "men", imageName: "account image", login: "Mega User", registrationDate: "12 мая 2008")
    }
    
    func loadPerson() {
        guard let person = person else {
            return
        }
        accountViewImage.image = UIImage(named: person.imageName)
        loginLabel.text = person.login
        registrationDateLabel.text = person.registrationDate
        fullNameLabel.text = person.fullName
        eMailLabel.text = person.eMail
        phoneNumberLabel.text = person.phoneNumber
        dateOfBirthLabel.text = person.birthDay
        genderLabel.text = person.gender
    }
    
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? EditAccountViewController, let incomingPerson = sourceViewController.account {
            person = Person(fullName: incomingPerson.fullName, eMail: incomingPerson.eMail, phoneNumber: incomingPerson.phoneNumber, birthDay: incomingPerson.birthDay, gender: incomingPerson.gender, imageName: "account image", login: "Mega User", registrationDate: "12 мая 2008")
//            account = Account(fullName: incomingPerson.fullName, eMail: incomingPerson.eMail, phoneNumber: incomingPerson.phoneNumber, birthDay: incomingPerson.birthDay, gender: incomingPerson.gender)
//
//            fullNameLabel.text = incomingPerson.fullName
//            eMailLabel.text = incomingPerson.eMail
//            phoneNumberLabel.text = incomingPerson.phoneNumber
//            dateOfBirthLabel.text = incomingPerson.birthDay
//            genderLabel.text = incomingPerson.gender
        }
    }
}

//
//  EditAccountViewController.swift
//  secondLesson
//
//  Created by Evgeny Evtushenko on 25/04/2018.
//  Copyright © 2018 EVT. All rights reserved.
//

import UIKit

class EditAccountViewController: UIViewController {

    @IBOutlet weak var comparationResultLabel: UILabel!
    @IBOutlet weak var textFieldPasswordOne: UITextField!
    @IBOutlet weak var textFieldPasswordTwo: UITextField!
    
    @IBOutlet weak var textFieldFullName: UITextField!
    @IBOutlet weak var textFieldEMail: UITextField!
    @IBOutlet weak var textFieldPhoneNumber: UITextField!
    @IBOutlet weak var textFieldBirthDay: UITextField!
    @IBOutlet weak var textFieldGender: UITextField!
    
    var account: Account?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func passwordCompare(_ sender: UITextField) {
        guard let passwordOne = textFieldPasswordOne.text, let passwordTwo = textFieldPasswordTwo.text else {
            return
        }
        
        if passwordOne == passwordTwo {
            comparationResultLabel.text = "Пароли совпадают"
        } else {
            comparationResultLabel.text = "Пароли не совпадают"
            saveAccount.isAccessibilityElement = false
        }
    }
    

    @IBOutlet weak var saveAccount: UIBarButtonItem!
    
    // This method lets you configure a view controller before it's presented.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let button = sender as? UIBarButtonItem, button === saveAccount else {
            return
        }
        guard let fullName = textFieldFullName.text, let eMail = textFieldEMail.text, let phoneNumber = textFieldPhoneNumber.text, let birthDay = textFieldBirthDay.text, let gender = textFieldGender.text else {
            return
        }
        
        account = Account(fullName: fullName, eMail: eMail, phoneNumber: phoneNumber, birthDay: birthDay, gender: gender)
//        comparationResultLabel.backgroundColor = UIColor.red
    }
}

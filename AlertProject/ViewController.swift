//
//  ViewController.swift
//  AlertProject
//
//  Created by Mac on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeadPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signUpButtonPressed(_ sender: UIButton) {
//        let alert = UIAlertController(title: "Error", message: "username not valid", preferredStyle: UIAlertController.Style.alert)
//        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
//            // actions when button pressing
//            print("button clicked")
//        }
//        alert.addAction(okButton)
//        self.present(alert, animated: true, completion: nil)
        
        if userNameTextField.text == "" {
            alertFunc(title: "Error", message: "username can not be empty")
        }else if passwordTextField.text == "" || repeadPasswordTextField.text == ""{
            alertFunc(title: "Error", message: "password can not be empty")
        }
        else if passwordTextField.text != repeadPasswordTextField.text {
          alertFunc(title: "Error", message: "password not match")
        }
        else {
        alertFunc(title: "Success", message: "User OK")
        }
        
    }
    
    func alertFunc(title: String , message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}


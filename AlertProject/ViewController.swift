//
//  ViewController.swift
//  AlertProject
//
//  Created by Hüseyin Kaya on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signupClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked
            print("button clicked")
        } //handler butona basılınca bir şey istiyor musun
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil) //1. Ne gösterilecek 2. animasyon? 3.Bu işlem gösterildikten sonra bir işlem isteniyor mu? //uyarı mesajı oluşturuldu
       */
        
        
        if usernameText.text == "" {
           message(title: "Error", message: "Username not found")
        } else if passwordText.text == "" {
            message(title: "Error", message: "Password not found")
        } else if passwordText.text != password2Text.text {
            message(title: "Error", message: "Passwords do not match")
        } else {
            message(title: "Success", message: "Account created successfully")
        }
        
      /*
        if usernameText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if passwordText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Password not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if passwordText.text != password2Text.text{
            let alert = UIAlertController(title: "Error", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Success", message: "Account created successfully", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        */
        
    }
    func message(title: String, message: String){
        let alert = UIAlertController(title: "\(title)", message: "\(message)", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}


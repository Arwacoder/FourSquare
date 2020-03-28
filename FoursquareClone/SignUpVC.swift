//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Arwa Mahdai on 3/2/20.
//  Copyright © 2020 Arwa Mahdai. All rights reserved.
//

import UIKit
import Parse


class SignUpVC: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        
        
    }
    @IBAction func signInTapped(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
            
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { (user, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                } else {
                    
                self.performSegue(withIdentifier: "toPlacesVC", sender: nil)

                }
            }
            
            
            
            
        } else {
            makeAlert(titleInput: "Error", messageInput: "Username / Password?")
        }
    }
    @IBAction func signUpTapped(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
            
            let user = PFUser()
            user.username = usernameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground { (success, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error!!")
                }else {

                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                    
                }
            }
        }else{
            makeAlert(titleInput: "Error", messageInput: "Username / Password??")
            
        }

        
        
        
    }
    func makeAlert(titleInput: String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }

}


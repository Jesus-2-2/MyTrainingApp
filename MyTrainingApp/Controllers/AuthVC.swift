//
//  AuthVC.swift
//  MyTrainingApp
//
//  Created by Ilya on 20.06.22.
//

import Foundation
import UIKit
import Firebase

class AuthVC: UIViewController {
    
    var ref: DatabaseReference!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TABBAR
        
      
        
        ref = Database.database().reference(withPath: "users")
        Auth.auth().addStateDidChangeListener { [ weak self ]  _, user in guard let _ = user else { return }
            self?.performSegue(withIdentifier: "toProfileSegue", sender: nil)
        }

    }

    @IBAction func signUpButton() {
        view.endEditing(true)
        guard let email = emailTF.text,
              let password = passwordTF.text,
              !email.isEmpty, !password.isEmpty else {
            displayErrorLabel(withText: "error!")
            return
        }


        //create user

        Auth.auth().createUser(withEmail: email, password: password) { [weak self] user, error in
        if let error = error {
            self?.displayErrorLabel(withText: "Registration failed: \(error.localizedDescription)")
        } else if let user = user {
            let userRef = self?.ref.child(user.user.uid)
            userRef?.setValue(["email": user.user.email])
        }
        }
    }
// MARK: - Private func
    private func displayErrorLabel(withText text: String) {
        errorLabel.text = text
        UIView.animate(withDuration: 7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut) { [weak self] in
            self?.errorLabel.alpha = 1
        } completion: { [weak self] _ in
            self?.errorLabel.alpha = 0
        }
    }

    @IBAction func signInButton() {
        view.endEditing(true)
        guard let email = emailTF.text,
              let password = passwordTF.text,
              !email.isEmpty, !password.isEmpty else {
            displayErrorLabel(withText: "error!")
            return
        }


        //sign in with email user

        Auth.auth().signIn(withEmail: email, password: password) { [weak self] user, error in
        if let error = error {
            self?.displayErrorLabel(withText: "Registration failed: \(error.localizedDescription)")
        } else if let _ = user {
            self?.performSegue(withIdentifier: "toProfileSegue", sender: nil)
//            let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
//            let vc = storyboard.instantiateViewController(identifier: "Tabbar")
//            self?.navigationController?.pushViewController(vc, animated: false)
        } else {
            self?.displayErrorLabel(withText: "Somethung wrong")
        }
        }
       
    }
}


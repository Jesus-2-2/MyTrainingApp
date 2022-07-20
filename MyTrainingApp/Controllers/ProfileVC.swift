//
//  ProfileVC.swift
//  MyTrainingApp
//
//  Created by Ilya on 20.06.22.
//

import Foundation
import UIKit
import Firebase
import youtube_ios_player_helper

class ProfileVC: UIViewController, UINavigationControllerDelegate {

//    var user: User!
//    var ref: DatabaseReference
    
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var bodystyleTF: UITextField!
    @IBOutlet weak var profilePhoto: UIImageView!
    let defaults = UserDefaults.standard
    @IBOutlet weak var backgroundPhoto: UIImageView!
    
    //PICKERBUTTON
    @IBAction func pickerButton(_ sender: UIButton) {
        showImagePicker()
        backgroundPhoto.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.view.insertSubview(backgroundPhoto, at: 1)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "Tabbar")
//        navigationController?.pushViewController(vc, animated: false)
        
        //BACKGROUND PHOTO
        let backgroundImage = UIImageView(frame:  UIScreen.main.bounds)
        backgroundImage.image = UIImage(named:  "b29da0f7c04aa3805858f3ea205bb748")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        
        
        ageTF.text = defaults.string(forKey: "age")
        weightTF.text = defaults.string(forKey: "weight")
        heightTF.text = defaults.string(forKey: "height")
        bodystyleTF.text = defaults.string(forKey: "bodystyle")
        backgroundPhoto.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        //SAVE DAT
//        guard let docDir =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last; else do {
//            return
    }
//SAVEBUTTON
@IBAction func saveAction(_ sender: Any) {
let age = ageTF.text!
let weight = weightTF.text!
let height = heightTF.text!
let bodystyle = bodystyleTF.text!
    
    if !age.isEmpty && !weight.isEmpty && !height.isEmpty && !bodystyle.isEmpty {
    defaults.set(age, forKey: "age")
    defaults.set(weight, forKey: "weight")
    defaults.set(height, forKey: "height")
    defaults.set(bodystyle, forKey: "bodystyle")
        
        }
}
    //IMAGE PICKER
    func showImagePicker() {
        let pickerController = UIImagePickerController()
        present(pickerController, animated: true, completion: nil)
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        pickerController.allowsEditing = true
        
    }
//SIGNOUT
    @IBAction func signOutTapped(_ sender: UIButton) {
        do {
            try Auth.auth().signOut()
            
        } catch {
            print("error")
        }
        dismiss(animated: true, completion: nil)
        }
}
//PICKER EXTENSION
    extension ProfileVC: UIImagePickerControllerDelegate, UIPickerViewDelegate {
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profilePhoto.image = image
            profilePhoto.contentMode = UIView.ContentMode.scaleAspectFill
            }
            else if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
                profilePhoto.image = image
                
            }
            picker.dismiss(animated: true, completion: nil)
        }
    }


//TEXTFIELD EXTENSION
extension ProfileVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        view.endEditing(true)
        
        if textField === ageTF {
            weightTF.becomeFirstResponder()
        }
        else if textField === weightTF {
            heightTF.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
}
}

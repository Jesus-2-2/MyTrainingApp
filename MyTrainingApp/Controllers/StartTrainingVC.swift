//
//  StartTrainingVC.swift
//  MyTrainingApp
//
//  Created by Ilya on 22.06.22.
//

import UIKit
import Foundation
class StartTrainingVC: UIViewController {

    let defaultsTraining = UserDefaults.standard
    
    @IBOutlet weak var howManyTimesYouRunOne: UITextField!
    
    @IBOutlet weak var howManyTimesYouRunTwo: UITextField!
    
    @IBOutlet weak var yourWeightAfterTrainingOne: UITextField!
    
    @IBOutlet weak var yourWeightAfterTrainingTwo: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX1One: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX1Two: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX2One: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX2Two: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX3One: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX3Two: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX4One: UITextField!
    
    @IBOutlet weak var howManykgYouTakeEX4Two: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backImage = UIImageView(frame: UIScreen.main.bounds)
        backImage.image = UIImage(named: "сексуальная-молодая-девушка-фитнес-залом-тянет-в-тренажерном-зале-180329483")
        backImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backImage, at: 1)
        
    
        
        //USERDEFAULTS
        howManyTimesYouRunOne.text = defaultsTraining.string(forKey: "runOne")
        
        howManyTimesYouRunTwo.text = defaultsTraining.string(forKey: "runTwo")
        
        yourWeightAfterTrainingOne.text = defaultsTraining.string(forKey: "weightOne")
        
        yourWeightAfterTrainingTwo.text = defaultsTraining.string(forKey: "weightTwo")
        
        howManykgYouTakeEX1One.text = defaultsTraining.string(forKey: "ex1One")
        
        howManykgYouTakeEX1Two.text = defaultsTraining.string(forKey: "ex1Two")
        
        howManykgYouTakeEX2One.text = defaultsTraining.string(forKey: "ex2One")
        
        howManykgYouTakeEX2Two.text = defaultsTraining.string(forKey: "ex2Two")
        
        howManykgYouTakeEX3One.text = defaultsTraining.string(forKey: "ex3One")
        
        howManykgYouTakeEX3Two.text = defaultsTraining.string(forKey: "ex3Two")
        
        howManykgYouTakeEX4One.text = defaultsTraining.string(forKey: "ex4One")
        
        howManykgYouTakeEX4Two.text = defaultsTraining.string(forKey: "ex4Two")
    }
    //SAVEBUTTON
    @IBAction func saveTraining(_ sender: Any) {
        
    let runOne = howManyTimesYouRunOne.text!
    let runTwo = howManyTimesYouRunTwo.text!
    let weightOne = yourWeightAfterTrainingOne.text!
    let weightTwo = yourWeightAfterTrainingTwo.text!
    let ex1One = howManykgYouTakeEX1One.text!
    let ex1Two = howManykgYouTakeEX1Two.text!
    let ex2One = howManykgYouTakeEX2One.text!
    let ex2Two = howManykgYouTakeEX2Two.text!
    let ex3One = howManykgYouTakeEX3One.text!
    let ex3Two = howManykgYouTakeEX3Two.text!
    let ex4One = howManykgYouTakeEX4One.text!
    let ex4Two = howManykgYouTakeEX4Two.text!
        
        if !runOne.isEmpty && !runTwo.isEmpty && !weightOne.isEmpty && !weightTwo.isEmpty && !ex1One.isEmpty && !ex1Two.isEmpty && !ex2One.isEmpty && !ex2Two.isEmpty && !ex3One.isEmpty && !ex3Two.isEmpty && !ex4One.isEmpty && !ex4Two.isEmpty   {
            
        defaultsTraining.set(runOne, forKey: "runOne")
        defaultsTraining.set(runTwo, forKey: "runTwo")
        defaultsTraining.set(weightOne, forKey: "weightOne")
        defaultsTraining.set(weightTwo, forKey: "weightTwo")
        defaultsTraining.set(ex1One, forKey: "ex1One")
        defaultsTraining.set(ex1Two, forKey: "ex1Two")
        defaultsTraining.set(ex2One, forKey: "ex2One")
        defaultsTraining.set(ex2Two, forKey: "ex2Two")
        defaultsTraining.set(ex3One, forKey: "ex3One")
        defaultsTraining.set(ex3Two, forKey: "ex3Two")
        defaultsTraining.set(ex4One, forKey: "ex4One")
        defaultsTraining.set(ex4Two, forKey: "ex4Two")
        }
}
}

//
//  ProgressVC.swift
//  MyTrainingApp
//
//  Created by Ilya on 22.06.22.
//

import UIKit

class ProgressVC: UIViewController {
    
    @IBOutlet weak var runningTimeLabel: UILabel!
    
    @IBOutlet weak var workLoadLabel: UILabel!
    
    @IBOutlet weak var minusWeightLabel: UILabel!
    
    @IBOutlet weak var congradulationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageProgressVC = UIImageView(frame:  UIScreen.main.bounds)
        backgroundImageProgressVC.image = UIImage(named:  "2022-06-22 16.32.51")
        backgroundImageProgressVC.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImageProgressVC, at: 0)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkResultsButton() {
        UIView.animate(withDuration: 2) {
            self.congradulationLabel.alpha = 1
        }
        congradulationLabel.alpha = 1
        minusWeightLabel.text = "- 4 KG "
        workLoadLabel.text = "+14% WORKLOAD"
        runningTimeLabel.text = "+ 13min45sec TIME"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

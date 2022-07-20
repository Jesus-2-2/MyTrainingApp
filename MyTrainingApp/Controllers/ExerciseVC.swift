//
//  ExerciseVC.swift
//  MyTrainingApp
//
//  Created by Ilya on 20.06.22.
//

import Foundation
import UIKit
import WebKit
import youtube_ios_player_helper

class ExerciseVC: UIViewController {

    @IBOutlet weak var firstWeb: WKWebView!
    
    
//    @IBOutlet weak var secondWeb: WKWebView!
//
//    @IBOutlet weak var thirdWeb: WKWebView!
//
//    @IBOutlet weak var firthWeb: WKWebView!
//
//    @IBOutlet weak var fifthWeb: WKWebView!
//
//    @IBOutlet weak var sixthWeb: WKWebView!
//
//    @IBOutlet weak var sevenWeb: WKWebView!
//
//    @IBOutlet weak var eightWeb: WKWebView!
//
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var playerViewOne: YTPlayerView!
    @IBOutlet var playerViewTwo: YTPlayerView!
    @IBOutlet var playerViewThree: YTPlayerView!
    @IBOutlet var playerViewFour: YTPlayerView!
    @IBOutlet var playerViewFive: YTPlayerView!
    @IBOutlet var playerViewSix: YTPlayerView!
    @IBOutlet var playerViewSeven: YTPlayerView!
    @IBOutlet var playerViewEight: YTPlayerView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerViewOne.load(withVideoId: "x9bByG6xVJg")
        playerViewTwo.load(withVideoId: "a0v0grVhRL0")
        playerViewThree.load(withVideoId: "nq2WRcIzCQ8")
        playerViewFour.load(withVideoId: "AUsVZ-vyUUk")
        playerViewFive.load(withVideoId: "Y3FHMXGx34A")
        playerViewSix.load(withVideoId: "NshlmP3t6M4")
        playerViewSeven.load(withVideoId: "NMgbLXSDOFY")
        playerViewEight.load(withVideoId: "3F6v7KCdD0k")
        
        
        
//        scrollView.backgroundColor = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1)
        // Do any additional setup after loading the view.
    }


}


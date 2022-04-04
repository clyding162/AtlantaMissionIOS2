//
//  ViewController.swift
//  HelpingHand
//
//  Created by Charles  Lyding on 4/3/22.
//

import UIKit
import SpriteKit
import GameplayKit

class ViewController: UIViewController {


    @IBOutlet weak var spriteKitView: SKView!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var logInForm: UIView!
    
    @IBOutlet weak var helloUserView: UIView!
    @IBOutlet weak var menuBarView: UIView!
    
    @IBOutlet weak var charlesLabel: UILabel!
    @IBOutlet weak var weeklyGoalsLabel: UILabel!
    @IBOutlet weak var weeklyGoalsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
        
        let scene = DashboardScene()//fix size
        
        let skView = spriteKitView!
            skView.showsFPS = false
            skView.showsNodeCount = false
            skView.ignoresSiblingOrder = true
            scene.size = skView.bounds.size
            scene.scaleMode = .aspectFill
        
            skView.presentScene(scene)
       
        
    }
    @IBAction func homePressed(_ sender: Any) {
        changeSceneHomeScene()
    }
    @IBAction func messagesPressed(_ sender: Any) {
        
        helloUserView.isHidden = true
        weeklyGoalsView.isHidden = true
    }
    
    @IBAction func logIn2Pressed(_ sender: Any) {
        changeSceneHomeScene()
        logInForm.removeFromSuperview()
        helloUserView.isHidden = false
        weeklyGoalsView.isHidden = false
        charlesLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        weeklyGoalsLabel.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        menuBarView.isHidden = false
    }
    @IBAction func logInPressed(_ sender: Any) {
        changeSceneGameScene()
        loginView.removeFromSuperview()
        logInForm.isHidden = false
        
    }
    
    
    func changeSceneGameScene(){
        let scene = GameScene()//fix size
        let skView = spriteKitView!
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        scene.size = skView.bounds.size
        scene.scaleMode = .aspectFill
        
        //skView.presentScene(scene)
        skView.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
    }
    
    func changeSceneHomeScene(){
        let scene = HomeScene()//fix size
        let skView = spriteKitView!
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        scene.size = skView.bounds.size
        scene.scaleMode = .aspectFill
        
        //skView.presentScene(scene)
        skView.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
    }
    
    func changeSceneMessageScene(){
        let scene = MessageScene()//fix size
        let skView = spriteKitView!
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        scene.size = skView.bounds.size
        scene.scaleMode = .aspectFill
        
        //skView.presentScene(scene)
        skView.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
    }
}


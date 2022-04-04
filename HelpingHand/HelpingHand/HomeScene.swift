//
//  HomeScene.swift
//  HelpingHand
//
//  Created by Charles  Lyding on 4/3/22.
//

import SpriteKit
import GameplayKit


class HomeScene: SKScene {
    
    let colorWheel = SKSpriteNode(imageNamed: "colorwheel")
    var hooray = SKSpriteNode(fileNamed: "hooray.sks")
    
    let randomInt = Int.random(in: 1..<3)

        
    
    var red:CGFloat = 23
    var green:CGFloat = 23
    var blue:CGFloat = 23
    
    override func didMove(to view: SKView) {
        
        if (randomInt == 1){
            hooray = SKSpriteNode(fileNamed: "hooray.sks")
        } else {
            hooray = SKSpriteNode(fileNamed: "spark.sks")
        }
        
        self.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        colorWheel.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        colorWheel.zPosition = 2
        let spin = SKAction.rotate(toAngle: 6.28, duration: 2)
        self.addChild(colorWheel)
        colorWheel.run(spin)
        
        hooray?.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        hooray?.zPosition = 1
        self.addChild(hooray!)
        
        
        
    }
    
}

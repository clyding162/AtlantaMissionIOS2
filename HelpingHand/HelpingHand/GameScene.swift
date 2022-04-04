//
//  GameScene.swift
//  HelpingHand
//
//  Created by Charles  Lyding on 4/3/22.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene {
    
    let logInLogo = SKSpriteNode(imageNamed: "Login")
    let gettingToKnow = SKSpriteNode(imageNamed: "excited")
    let backgroundImage = SKSpriteNode(imageNamed: "hand")
    
    override func didMove(to view: SKView) {
        
        backgroundImage.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        backgroundImage.zPosition = 1
        self.addChild(backgroundImage)
        
        logInLogo.position = CGPoint(x: self.size.width / 2, y: self.size.height - (self.size.height / 8))
        logInLogo.zPosition = 2
        self.addChild(logInLogo)
        
        gettingToKnow.position = CGPoint(x: self.size.width / 2, y: self.size.height - (self.size.height) / 2.5)
        gettingToKnow.zPosition = 2
        self.addChild(gettingToKnow)
    }
    
}


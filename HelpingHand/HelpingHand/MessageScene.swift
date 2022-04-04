//
//  MessageScene.swift
//  HelpingHand
//
//  Created by Charles  Lyding on 4/3/22.
//

import SpriteKit
import GameplayKit


class MessageScene: SKScene {
    
    
    let backgroundImage = SKSpriteNode(imageNamed: "hand")
    
    
    override func didMove(to view: SKView) {
        
        backgroundImage.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        backgroundImage.zPosition = 1
        self.addChild(backgroundImage)
        
        
    }
    
}

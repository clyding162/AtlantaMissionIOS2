import Foundation
import SpriteKit
import GameplayKit

class DashboardScene: SKScene{
    
    let logo = SKSpriteNode(imageNamed: "logo")
    let backgroundImage = SKSpriteNode(imageNamed: "atlantaBackground")
    let welcomeSign = SKSpriteNode(imageNamed: "atlantaMission")
    let gettingSign = SKSpriteNode(imageNamed: "helpingEachOther")
    
    
    
    
    
    override func didMove(to view: SKView) {
        //self.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        backgroundImage.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        backgroundImage.size = CGSize(width: self.size.width, height: self.size.height)
        backgroundImage.zPosition = 1
        self.addChild(backgroundImage)
        
        
        logo.position = CGPoint(x: self.size.width / 2, y: (self.size.height  / 2) + logo.size.height * 2)
        logo.alpha = 1
        logo.zPosition = 2
        self.addChild(logo)
        
        welcomeSign.position = CGPoint(x: self.size.width / 2, y: self.size.height - (self.size.height / 8))
        welcomeSign.zPosition = 2
        self.addChild(welcomeSign)
        
        gettingSign.position = CGPoint(x: self.size.width / 2, y: self.size.height - (self.size.height) / 2.5)
        gettingSign.zPosition = 2
        self.addChild(gettingSign)
        
        
    }
    

    
}

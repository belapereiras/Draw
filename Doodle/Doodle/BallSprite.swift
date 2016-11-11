//
//  BallSprite.swift
//  Doodle
//
//  Created by Isabela Pereira on 11/11/16.
//  Copyright © 2016 Isabela Pereira. All rights reserved.
//

import Foundation
import SpriteKit

public class BallSprite: SKSpriteNode {
    
    public static func newInstace() -> BallSprite {
        
        let ballSprite = BallSprite(imageNamed: "ball")
        
        ballSprite.zPosition = 1
        ballSprite.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 20, height: 20))
        
        return ballSprite
        
    }
}



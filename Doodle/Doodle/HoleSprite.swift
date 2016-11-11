//
//  HoleSprite.swift
//  Doodle
//
//  Created by Isabela Pereira on 11/11/16.
//  Copyright © 2016 Isabela Pereira. All rights reserved.
//

import Foundation
import SpriteKit

public class HoleSprite: SKSpriteNode {
    
    public static func newInstace() -> HoleSprite {
        
        let holeSprite = HoleSprite(imageNamed: "hole")
        
        holeSprite.zPosition = 1
        
        return holeSprite
        
    }
}


////SET UP HOLE
//
//let hole = SKSpriteNode(imageNamed: "hole")
//hole.position = CGPoint(x: 1670, y: 230)
//hole.zPosition = 1
//
//addChild(hole)


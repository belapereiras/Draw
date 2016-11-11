//
//  FloorSprite.swift
//  Doodle
//
//  Created by Isabela Pereira on 11/11/16.
//  Copyright © 2016 Isabela Pereira. All rights reserved.
//

import Foundation
import SpriteKit


public class FloorSprite: SKSpriteNode {
    
    public static func newInstace() -> FloorSprite {
        
        let floorSprite = FloorSprite(imageNamed: "floor")
        
        floorSprite.zPosition = 1
        //floorSprite.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x: -size.width / 2, y: 40), to: CGPoint(x: size.width, y: 0))
        floorSprite.physicsBody?.isDynamic = false
        
        return floorSprite
        
    }
}

//
//// SET UP FLOOR
//
//let floor = SKSpriteNode(imageNamed: "floor")
//floor.position = CGPoint(x: size.width / 2, y: 110)
//
//floor.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x: -size.width / 2, y: 40), to: CGPoint(x: size.width, y: 0))
//floor.physicsBody?.isDynamic = false
//
//addChild(floor)

//
//  MenuScene.swift
//  Doodle
//
//  Created by Isabela Pereira on 11/10/16.
//  Copyright © 2016 Isabela Pereira. All rights reserved.
//

import UIKit
import Foundation
import SpriteKit
import CoreGraphics

class LevelScene: SKScene {
    
    private var lastUpdateTime : TimeInterval = 0
    
    override func sceneDidLoad() {
        self.lastUpdateTime = 0
        
    //SET UP BACKGROUND
        
        let background = SKSpriteNode(imageNamed: "BG")
        background.position = CGPoint(x: frame.midX, y: frame.midY)
        background.zPosition = 0
        
        addChild(background)
        
    // SET UP FLOOR
        
        let floor = SKSpriteNode(imageNamed: "floor")
        floor.position = CGPoint(x: size.width / 2, y: 110)

        floor.zPosition = 1
        
        floor.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x: -size.width / 2, y: 40), to: CGPoint(x: size.width, y: 0))
        floor.physicsBody?.isDynamic = false
        
        addChild(floor)
        
    //SET UP BALL

        let ball = SKSpriteNode(imageNamed: "ball")
        ball.position = CGPoint(x: 390, y: 160)
        ball.zPosition = 1
        
        ball.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 20, height: 20))
        
        addChild(ball)
        
    //SET UP HOLE
        
        let hole = SKSpriteNode(imageNamed: "hole")
        hole.position = CGPoint(x: 1670, y: 230)
        hole.zPosition = 1
        
        addChild(hole)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        self.lastUpdateTime = currentTime
    }
    
    
    
}

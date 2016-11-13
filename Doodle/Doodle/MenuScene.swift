//
//  MenuScene.swift
//  Doodle
//
//  Created by Isabela Pereira on 11/11/16.
//  Copyright © 2016 Isabela Pereira. All rights reserved.
//

import Foundation
import SpriteKit

class MenuScene: SKScene {
    
    var playButton : SKSpriteNode! = nil
    var selectedButton: SKSpriteNode?
    
    let playButtonTexture = SKTexture(imageNamed: "playButton")
    let playButtonPressedTexture = SKTexture(imageNamed: "pressedPlayButton")
    
    
    
    
    override func sceneDidLoad() {
        
        //SET UP BACKGROUND
        
        let background = SKSpriteNode(imageNamed: "BG")
        background.position = CGPoint(x: frame.midX, y: frame.midY)
        background.zPosition = 0
        
        addChild(background)
        
        
        //SET UP PLAY BUTTON
        
        playButton = SKSpriteNode(texture: playButtonTexture)
        playButton.position = CGPoint(x: 960, y: 550)
        
        addChild(playButton)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if selectedButton != nil {
                handlePlayButtonHover(isHovering: false)
                
            }
            
            if playButton.contains(touch.location(in: self)) {
                selectedButton = playButton
                handlePlayButtonHover(isHovering: true)
            }
        }
    }
    
}

func handlePlayButtonHover(isHovering : Bool) {
    if isHovering {
        playButton.texture = playButtonPressedTexture
    } else {
        playButton.texture = playButtonTexture
    }
}
















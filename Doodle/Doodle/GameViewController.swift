//
//  GameViewController.swift
//  Doodle
//
//  Created by Isabela Pereira on 11/10/16.
//  Copyright © 2016 Isabela Pereira. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    //SET UP LEVEL SCENE

    let sceneNode = MenuScene(size: view.frame.size)
    
    if let view = self.view as! SKView? {
        view.presentScene(sceneNode)
        view.ignoresSiblingOrder = true
        
        view.showsFPS = false
        view.showsNodeCount = false
    }
}
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
}

//
//  GameScene.swift
//  Swiftris
//
//  Created by Xiulan Shi on 1/21/16.
//  Copyright (c) 2016 Xiulan Shi. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background") //background is the variable's name, Swift infers its type to be that of SKSpriteNode and the keyword let indicates that it can not be re-assigned.
        background.position = CGPoint(x: 0, y: 0)   //(0, 0) in SpriteKit is the bottom-left corner
        background.anchorPoint = CGPoint(x: 0, y: 1.0) //the top-left corner of the screen: (0, 1.0)
        addChild(background)
    }
       
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}


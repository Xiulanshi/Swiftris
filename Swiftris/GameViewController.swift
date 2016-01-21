//
//  GameViewController.swift
//  Swiftris
//
//  Created by Xiulan Shi on 1/21/16.
//  Copyright (c) 2016 Xiulan Shi. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the view.  //The as! operator is a forced downcast. The view object is of type SKView, but before downcasting, our code treated it like a basic UIView. Without downcasting, we are unable to access SKView methods and properties, such as presentScene(SKScene).
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        // Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        // Present the scene.
        skView.presentScene(scene)
        
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
/*In GameViewController we've added a member variable, scene. Its declaration: var scene: GameScene! lets us know that it's a variable, its name is scene, its type is GameScene and it's a non-optional value which we will assign at some point.

Swift typically enforces instantiation either in-line where you declare the variable or during the initializer, init…. To avoid this rule, we've added an ! after the type.

In viewDidLoad() we assign scene as promised, using the initializer we had just written moments ago. We tell it to fill the screen and then ask our view to present that scene to the user.
*/

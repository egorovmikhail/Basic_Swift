//
//  Apple.swift
//  8_EgorovMikhail
//
//  Created by Михаил Егоров on 03.02.2020.
//  Copyright © 2020 Михаил Егоров. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class Apple: SKShapeNode {
    
    convenience init(position: CGPoint) {
        self.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        
        fillColor = UIColor.red
        strokeColor = UIColor.red
        
        lineWidth = 5
        self.position = position
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10.0, center: CGPoint(x: 5, y: 5))
        self.physicsBody?.categoryBitMask = CollisionCategories.Apple
    }
}


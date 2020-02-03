//
//  SnakeHead.swift
//  8_EgorovMikhail
//
//  Created by Михаил Егоров on 04.02.2020.
//  Copyright © 2020 Михаил Егоров. All rights reserved.
//

import Foundation
import UIKit

class SnakeHead: SnakeBodyPart {
    override init(atPoint point: CGPoint) {
        super.init(atPoint: point)
        
        self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple | CollisionCategories.Snake
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

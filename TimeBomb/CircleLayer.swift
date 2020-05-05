//
//  RectangleLayer.swift
//  TimeBomb
//
//  Created by jeff on 2020/04/10.
//  Copyright © 2020 TakHyun Jung. All rights reserved.
//

import UIKit

class CircleLayer: CAShapeLayer {
  
    override init(){
        super.init()
        fillColor = UIColor.red.cgColor
        path = circlePathFull.cgPath
    }
    
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    var circlePathFull: UIBezierPath {
        let center = CGPoint(x: 0 , y: 0)
        let semiCircle =  UIBezierPath(roundedRect: CGRect(origin: center, size: CGSize(width: 200, height: 200)), cornerRadius: 100)
       
        return semiCircle
    }

}

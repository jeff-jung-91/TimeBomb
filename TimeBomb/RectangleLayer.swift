//
//  RectangleLayer.swift
//  TimeBomb
//
//  Created by jeff on 2020/04/10.
//  Copyright © 2020 TakHyun Jung. All rights reserved.
//

import UIKit

class RectangleLayer: CAShapeLayer {
  
    override init(){
        super.init()
        fillColor = UIColor.clear.cgColor
        lineWidth = 5.0
        path = rectanglePathFull.cgPath
    }
    
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    var rectanglePathFull: UIBezierPath {
        var rectanglePath = UIBezierPath()
        rectanglePath.move(to: CGPoint(x: 0.0, y: 100.0))
        rectanglePath.addLine(to: CGPoint(x: 0.0, y: -lineWidth))
        rectanglePath.addLine(to: CGPoint(x: 100.0, y: -lineWidth))
        rectanglePath.addLine(to: CGPoint(x: 100.0, y: 100.0))
        rectanglePath.addLine(to: CGPoint(x: -lineWidth / 2, y: 100.0))
        rectanglePath.close()
        
        return rectanglePath
    }
    
    
  
  func animateStrokeWithColor(color: UIColor) {
    
  }
}

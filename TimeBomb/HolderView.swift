//
//  HolderView.swift
//  TimeBomb
//
//  Created by jeff on 2020/04/10.
//  Copyright © 2020 TakHyun Jung. All rights reserved.
//

import UIKit

class HolderView: UIView {
    let circleLayer = CircleLayer()
    let arcLayer = ArcLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("HolderView fatal error")
    }
    
    func addStartRect(){
        layer.addSublayer(circleLayer)
        let cir = circleLayer.circlePathFull
        cir.fill()
    }
    
    func addRect() {
        layer.addSublayer(circleLayer)
        let cir = circleLayer.circlePathFull
        cir.fill()
        Timer.scheduledTimer(timeInterval: 0.0, target: self, selector: #selector(drawArc),
                             userInfo: nil, repeats: false)
    }
    
    @objc func drawArc(){
        layer.addSublayer(arcLayer)
        arcLayer.animate()
        layer.backgroundColor = UIColor.clear.cgColor
    }
}


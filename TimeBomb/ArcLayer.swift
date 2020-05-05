//
//  ArcLayer.swift
//  TimeBomb
//
//  Created by jeff on 2020/04/10.
//  Copyright © 2020 TakHyun Jung. All rights reserved.
//
import UIKit

class ArcLayer: CAShapeLayer {
    //https://github.com/Zedd0202/UIBezierPath-Pie-Chart
    // 480초 / 19개에니메이션 = 25.263
    let animationDuration: CFTimeInterval = 25.263
    let center = CGPoint(x: 100, y: 100)
    let radius :CGFloat = 100
    var startAngle: CGFloat = (-(.pi) / 2) // -90도 맨위에서 시작함
    var endAngle: CGFloat = 0.0
    var number = 0
    
    override init(){
        super.init()
        fillColor = UIColor.white.cgColor
        path = arcPathPre.cgPath
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //x degree = x * pi / 180 radian
    var arcPathPre: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: -89 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath10: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: -70 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath30: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: -50 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath50: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: -30 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath70: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: -10 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
   
    var arcPath90: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 10 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath110: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 30 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath130: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 50 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath150: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 70 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath170: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 90 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath190: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 110 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath210: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 130 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath230: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 150 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath250: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 170 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath270: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 190 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath290: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 210 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath310: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 230 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath330: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 250 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPath350: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 260 * CGFloat.pi / 180,
                    clockwise: true)
        path.close()
        return path
    }
    var arcPathComplete: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: 270 * CGFloat.pi / 180,
                    clockwise: true)
        
        path.close()
        return path
    }
    
    
    func animate() {
        let arcAnimationPre: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimationPre.fromValue = arcPathPre.cgPath
        arcAnimationPre.toValue = arcPath10.cgPath
        arcAnimationPre.beginTime = 0.0
        arcAnimationPre.duration = animationDuration
        
        let arcAnimation10: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation10.fromValue = arcPath10.cgPath
        arcAnimation10.toValue = arcPath30.cgPath
        arcAnimation10.beginTime = arcAnimationPre.beginTime + arcAnimationPre.duration
        arcAnimation10.duration = animationDuration
        
        let arcAnimation30: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation30.fromValue = arcPath30.cgPath
        arcAnimation30.toValue = arcPath50.cgPath
        arcAnimation30.beginTime = arcAnimation10.beginTime + arcAnimation10.duration
        arcAnimation30.duration = animationDuration
        
        let arcAnimation50: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation50.fromValue = arcPath50.cgPath
        arcAnimation50.toValue = arcPath70.cgPath
        arcAnimation50.beginTime = arcAnimation30.beginTime + arcAnimation30.duration
        arcAnimation50.duration = animationDuration
        
        let arcAnimation70: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation70.fromValue = arcPath70.cgPath
        arcAnimation70.toValue = arcPath90.cgPath
        arcAnimation70.beginTime = arcAnimation50.beginTime + arcAnimation50.duration
        arcAnimation70.duration = animationDuration
        
        
        let arcAnimation90: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation90.fromValue = arcPath90.cgPath
        arcAnimation90.toValue = arcPath110.cgPath
        arcAnimation90.beginTime = arcAnimation70.beginTime + arcAnimation70.duration
        arcAnimation90.duration = animationDuration
        
        let arcAnimation110: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation110.fromValue = arcPath110.cgPath
        arcAnimation110.toValue = arcPath130.cgPath
        arcAnimation110.beginTime = arcAnimation90.beginTime + arcAnimation90.duration
        arcAnimation110.duration = animationDuration
        
        let arcAnimation130: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation130.fromValue = arcPath130.cgPath
        arcAnimation130.toValue = arcPath150.cgPath
        arcAnimation130.beginTime = arcAnimation110.beginTime + arcAnimation110.duration
        arcAnimation130.duration = animationDuration
        
        let arcAnimation150: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation150.fromValue = arcPath150.cgPath
        arcAnimation150.toValue = arcPath170.cgPath
        arcAnimation150.beginTime = arcAnimation130.beginTime + arcAnimation130.duration
        arcAnimation150.duration = animationDuration
        
        let arcAnimation170: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation170.fromValue = arcPath170.cgPath
        arcAnimation170.toValue = arcPath190.cgPath
        arcAnimation170.beginTime = arcAnimation150.beginTime + arcAnimation150.duration
        arcAnimation170.duration = animationDuration
        
        let arcAnimation190: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation190.fromValue = arcPath190.cgPath
        arcAnimation190.toValue = arcPath210.cgPath
        arcAnimation190.beginTime = arcAnimation170.beginTime + arcAnimation170.duration
        arcAnimation190.duration = animationDuration
        
        let arcAnimation210: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation210.fromValue = arcPath210.cgPath
        arcAnimation210.toValue = arcPath230.cgPath
        arcAnimation210.beginTime = arcAnimation190.beginTime + arcAnimation190.duration
        arcAnimation210.duration = animationDuration
        
        let arcAnimation230: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation230.fromValue = arcPath230.cgPath
        arcAnimation230.toValue = arcPath250.cgPath
        arcAnimation230.beginTime = arcAnimation210.beginTime + arcAnimation210.duration
        arcAnimation230.duration = animationDuration
        
        let arcAnimation250: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation250.fromValue = arcPath250.cgPath
        arcAnimation250.toValue = arcPath270.cgPath
        arcAnimation250.beginTime = arcAnimation230.beginTime + arcAnimation230.duration
        arcAnimation250.duration = animationDuration
        
        let arcAnimation270: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation270.fromValue = arcPath270.cgPath
        arcAnimation270.toValue = arcPath290.cgPath
        arcAnimation270.beginTime = arcAnimation250.beginTime + arcAnimation250.duration
        arcAnimation270.duration = animationDuration
        
        let arcAnimation290: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation290.fromValue = arcPath290.cgPath
        arcAnimation290.toValue = arcPath310.cgPath
        arcAnimation290.beginTime = arcAnimation270.beginTime + arcAnimation270.duration
        arcAnimation290.duration = animationDuration
        
        let arcAnimation310: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation310.fromValue = arcPath310.cgPath
        arcAnimation310.toValue = arcPath330.cgPath
        arcAnimation310.beginTime = arcAnimation290.beginTime + arcAnimation290.duration
        arcAnimation310.duration = animationDuration
        
        let arcAnimation330: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation330.fromValue = arcPath330.cgPath
        arcAnimation330.toValue = arcPath350.cgPath
        arcAnimation330.beginTime = arcAnimation310.beginTime + arcAnimation310.duration
        arcAnimation330.duration = animationDuration
        
        let arcAnimation350: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimation350.fromValue = arcPath350.cgPath
        arcAnimation350.toValue = arcPathComplete.cgPath
        arcAnimation350.beginTime = arcAnimation330.beginTime + arcAnimation330.duration
        arcAnimation350.duration = animationDuration
        

        let arcAnimationGroup: CAAnimationGroup = CAAnimationGroup()
        arcAnimationGroup.animations = [arcAnimationPre, arcAnimation10, arcAnimation30, arcAnimation50, arcAnimation70,arcAnimation90,
                                        arcAnimation110, arcAnimation130, arcAnimation150,arcAnimation170,arcAnimation190,arcAnimation210,
                                        arcAnimation230,arcAnimation250,arcAnimation270,arcAnimation290,arcAnimation310,arcAnimation330,
                                        arcAnimation350]
        
        arcAnimationGroup.duration = arcAnimation350.beginTime + arcAnimation350.duration
        arcAnimationGroup.fillMode = CAMediaTimingFillMode.forwards
        arcAnimationGroup.isRemovedOnCompletion = false
        add(arcAnimationGroup, forKey: nil)
    }
}

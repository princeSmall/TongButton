//
//  TongButton.swift
//  TongPopInstall
//
//  Created by tongle on 2017/6/9.
//  Copyright © 2017年 tong. All rights reserved.
//

import UIKit

class TongButton: UIButton {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //缩放动画
        var scale = self.pop_animation(forKey: "scale")as?POPSpringAnimation
        if scale != nil {
            scale?.toValue = NSValue(cgPoint:CGPoint(x: 0.8, y: 0.8))
        }else{
       scale = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            scale?.toValue = NSValue(cgPoint:CGPoint(x: 0.8, y: 0.8))
            scale?.springBounciness = 20
            scale?.springSpeed = 5
            self.pop_add(scale, forKey: "scale")
            
        }
        //旋转动画
        var rotate = self.layer.pop_animation(forKey: "rotate")as? POPSpringAnimation
        if rotate != nil {
            rotate?.toValue = Double.pi / 6
        }else{
            rotate = POPSpringAnimation(propertyNamed: kPOPLayerRotation)
            rotate?.toValue = Double.pi / 6
            rotate?.springBounciness = 20
            rotate?.springSpeed = 18
            self.layer.pop_add(rotate, forKey: "rotate")
        }
        
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        //缩放动画
        var scale = self.pop_animation(forKey: "scale")as?POPSpringAnimation
        if scale != nil {
            scale?.toValue = NSValue(cgPoint:CGPoint(x: 1, y: 1))
        }else{
            scale = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            scale?.toValue = NSValue(cgPoint:CGPoint(x: 1, y: 1))
            scale?.springBounciness = 20
            scale?.springSpeed = 5
            self.pop_add(scale, forKey: "scale")
            
        }
        //旋转动画
        var rotate = self.layer.pop_animation(forKey: "rotate")as? POPSpringAnimation
        if rotate != nil {
            rotate?.toValue = 0
        }else{
            rotate = POPSpringAnimation(propertyNamed: kPOPLayerRotation)
            rotate?.toValue = 0
            rotate?.springBounciness = 20
            rotate?.springSpeed = 18
            self.layer.pop_add(rotate, forKey: "rotate")
        }

    }
}






















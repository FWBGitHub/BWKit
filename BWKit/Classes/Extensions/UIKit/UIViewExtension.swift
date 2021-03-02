//
//  UIViewExtension.swift
//  QianChengApp
//
//  Created by macbook on 17/3/7.
//  Copyright © 2017年 fwb. All rights reserved.
//

import UIKit

extension UIView{
    public var x: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var r = self.frame
            r.origin.x = newValue
            self.frame = r
        }
    }
    public var y: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var r = self.frame
            r.origin.y = newValue
            self.frame = r
        }
    }
    public var width:CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var r = self.frame
            r.size.width = newValue
            self.frame = r
        }
    }
    public var height:CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var r = self.frame
            r.size.height = newValue
            self.frame = r
        }
    }
    // left
    var left : CGFloat {
        
        get {
            
            return x
        }
        
        set(newVal) {
            
            x = newVal
        }
    }
    
    // right
    var right : CGFloat {
        
        get {
            
            return x + width
        }
        
        set(newVal) {
            
            x = newVal - width
        }
    }
    
    // top
    var top : CGFloat {
        
        get {
            
            return y
        }
        
        set(newVal) {
            
            y = newVal
        }
    }
    
    // bottom
    var bottom : CGFloat {
        
        get {
            
            return y + height
        }
        
        set(newVal) {
            
            y = newVal - height
        }
    }
    
    var centerX : CGFloat {
        
        get {
            
            return center.x
        }
        
        set(newVal) {
            
            center = CGPoint(x: newVal, y: center.y)
        }
    }
    
    var centerY : CGFloat {
        
        get {
            
            return center.y
        }
        
        set(newVal) {
            
            center = CGPoint(x: center.x, y: newVal)
        }
    }
    
    var middleX : CGFloat {
        
        get {
            
            return width / 2
        }
    }
    
    var middleY : CGFloat {
        
        get {
            
            return height / 2
        }
    }
    
    var middlePoint : CGPoint {
        
        get {
            
            return CGPoint(x: middleX, y: middleY)
        }
    }
}
extension UIView{
    ///添加点击事件
    func addTarget(target:Any? , action:Selector?){
        let tap = UITapGestureRecognizer(target: target, action: action)
        self.addGestureRecognizer(tap)
    }
    ///圆角
    func clipCornerRadius(_ cornerRadius:CGFloat){
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    ///自动布局优先级设置
    func autoLayoutContentPriority(_ axis:NSLayoutConstraint.Axis){
        self.setContentHuggingPriority(.required, for: axis)
        self.setContentCompressionResistancePriority(.required, for: axis)
    }
    ///添加渐变色图层
    func addGradientLayerColors(_ colors:Array<Any>,startPoint:CGPoint,endPoint:CGPoint){
        self.superview?.layoutIfNeeded()
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        self.layer .insertSublayer(gradient, at: 0)
    }
}

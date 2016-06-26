//
//  BLLine.swift
//  fourshaonian
//
//  Created by FangYan on 16/5/26.
//  Copyright © 2016年 yousi.inc. All rights reserved.
//

import UIKit

@IBDesignable
public class BLLine: UIView {
    
    @IBInspectable var borderColor : UIColor = UIColor.grayColor(){
        didSet {
            reDraw()
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0.5 {
        didSet {
            reDraw()
        }
    }
    
    @IBInspectable var ifVertical : Bool = false {
        didSet {
            reDraw()
        }
    }
    
    override public func drawRect(rect: CGRect) {
        
        self.backgroundColor = UIColor.clearColor()
        
        let context:CGContextRef =  UIGraphicsGetCurrentContext()!;//上下文
        CGContextSaveGState(context);
        CGContextSetAllowsAntialiasing(context, true) //抗锯齿设置
        
        let frame = self.layer.bounds
        
        let p1:CGMutablePathRef = CGPathCreateMutable();
        
        if ifVertical {
        
            CGPathMoveToPoint(p1, nil, 0, 0)
            CGPathAddLineToPoint(p1, nil, 0, frame.height)
            
        } else {
            
            CGPathMoveToPoint(p1, nil, 0, 0)
            CGPathAddLineToPoint(p1, nil, frame.width , 0)
            
        }
        
        CGPathCloseSubpath(p1);
        
        CGContextAddPath(context, p1)
        
        CGContextSetLineWidth(context, borderWidth)
        
        CGContextSetStrokeColorWithColor(context, borderColor.CGColor)
        
        CGContextStrokePath(context)
        
        CGContextRestoreGState(context)
        
    }
    
    func reDraw (){
        
    }
    
}

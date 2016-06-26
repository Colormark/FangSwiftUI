//
//  Button+Icon+Caption
//
//  Created by FangYan on 16/1/29.
//  Copyright © 2016年 yousi.inc. All rights reserved.
//

import UIKit

@IBDesignable
public class FSUButtonIconCaption: UIButton {

    //Gap between image and title
    @IBInspectable var gap : Int = 10 {
        didSet {
            commonInit()
        }
    }
    
    //Set direction
    @IBInspectable var ifVertical : Bool = false {
        didSet {
            commonInit()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit (){
        
        // read frame size of imageView and titleLabel
        let imageSize = self.imageView!.frame.size
        let titleSize = self.titleLabel!.frame.size
        
        if self.ifVertical {
        
            // get the height they will take up as a unit
            let totalHeight = imageSize.height + titleSize.height + CGFloat(gap)
            
            // raise the image and push it right to center it
            self.imageEdgeInsets = UIEdgeInsetsMake( -1 * (totalHeight - imageSize.height), 0.0, 0.0, -1 * titleSize.width)
            
            // lower the text and push it left to center it
            self.titleEdgeInsets = UIEdgeInsetsMake(
                0.0, -1 * imageSize.width, -1 * (totalHeight - titleSize.height), 0.0);
            
        } else {
            
            //set image edge inset at left
            self.imageEdgeInsets = UIEdgeInsetsMake( 0, -1 * CGFloat(gap)/2 , 0.0, 0.0)
            
            //set title edge inset at right
            self.titleEdgeInsets = UIEdgeInsetsMake( 0, 1 * CGFloat(gap)/2 , 0.0, 0.0)
        }
        
    }

}

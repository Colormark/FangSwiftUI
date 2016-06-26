//
//  BLIcon.swift  need FontAwesome
//  fourshaonian
//
//  Created by FangYan on 16/5/23.
//  Copyright © 2016年 yousi.inc. All rights reserved.
//

import UIKit

@IBDesignable
public class BLIcon: UILabel {

    @IBInspectable var Icon : String = "fa-arrow-down" {
        didSet {
            commonInit()
        }
    }
    
    @IBInspectable var Size : Int = 12 {
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
        self.font = UIFont.fontAwesomeOfSize(CGFloat(self.Size))
        let iconName = self.Icon
        self.text = String.fontAwesomeIconWithName(FontAwesome.fromCode(iconName)!)
    }
    

}

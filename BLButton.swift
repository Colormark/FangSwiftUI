//
//  BLButton.swift
//
//  Created by FangYan on 15/12/14.
//  Copyright © 2015年 yousi.inc. All rights reserved.
//

import UIKit

//主题
enum YSButtonTheme:Int {
    case Primary = 0
    case PrimaryLight = 1
    case LineDark = 2
    case Disabled = 3
    case Warning = 4
}

//大小
enum YSButtonSize:Int {
    case Large = 0
    case Normal = 1
    case Small = 2
}

//模型
enum YSButtonModal:Int {
    case Hollow = 0
    case Solid = 1
}

//圆角
enum YSButtonRadius:Int {
    case None = 0
    case Tiny = 1
    case Normal = 2
    case Half = 3
    case All = 4
}

@IBDesignable
public class BLButton: UIButton {

    @IBInspectable var theme : Int = 0 {
        didSet {
            commonInit()
        }
    }
    @IBInspectable var size : Int = 0 {
        didSet {
            commonInit()
        }
    }
    @IBInspectable var modal : Int = 0 {
        didSet {
            commonInit()
        }
    }
    @IBInspectable var radius : Int = 0 {
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
    
    func initWith (theme:YSButtonTheme , size:YSButtonSize , modal:YSButtonModal , radius:YSButtonRadius){
    
        if theme.rawValue > -1 {
            self.theme = theme.rawValue
        }
    
    }
    
    func commonInit (){
        
        if self.size == 0 {
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y - (UI.ButtonSize["SM"]! - self.frame.size.height)/2, self.frame.size.width, UI.ButtonSize["SM"]!)
            self.titleLabel?.font = UIFont.systemFontOfSize(UI.TextSize["XS"]!)
        } else if self.size == 1 {
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y - (UI.ButtonSize["Normal"]! - self.frame.size.height)/2, self.frame.size.width, UI.ButtonSize["Normal"]!)
            self.titleLabel?.font = UIFont.systemFontOfSize(UI.TextSize["Normal"]!)
        } else if self.size == 2 {
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y - (UI.ButtonSize["LG"]! - self.frame.size.height)/2, self.frame.size.width, UI.ButtonSize["LG"]!)
            self.titleLabel?.font = UIFont.systemFontOfSize(UI.TextSize["XL"]!)
        }
        
        if self.modal == 0 {
            self.layer.borderWidth = 1
            self.layer.backgroundColor = UIColor.clearColor().CGColor
            if self.theme == 0 {
                self.layer.borderColor = UI.Color["primary"]?.CGColor
                self.setTitleColor(UI.Color["primary"]!, forState:.Normal)
            }else if self.theme == 1 {
                self.layer.borderColor = UI.Color["primaryLight"]?.CGColor
                self.setTitleColor(UI.Color["primaryLight"]!, forState:.Normal)
            }else if self.theme == 2 {
                self.layer.borderColor = UI.Color["lineDark"]?.CGColor
                self.setTitleColor(UI.Color["lineDark"]!, forState:.Normal)
            }else if self.theme == 3 {
                self.layer.borderColor = UI.Color["black3"]?.CGColor
                self.setTitleColor(UI.Color["black3"]!, forState:.Normal)
            }else if self.theme == 4 {
                self.layer.borderColor = UI.Color["warning"]?.CGColor
                self.setTitleColor(UI.Color["warning"]!, forState:.Normal)
            }
        }else if self.modal == 1 {
            self.layer.borderWidth = 0
            self.setTitleColor(UI.Color["white"]!, forState:.Normal)
            if self.theme == 0 {
                self.layer.backgroundColor = UI.Color["primary"]?.CGColor
            }else if self.theme == 1 {
                self.layer.backgroundColor = UI.Color["primaryLight"]?.CGColor
            }else if self.theme == 2 {
                self.layer.backgroundColor = UI.Color["lineDark"]?.CGColor
            }else if self.theme == 3 {
                self.layer.backgroundColor = UI.Color["black3"]?.CGColor
            }else if self.theme == 4 {
                self.layer.borderColor = UI.Color["warning"]?.CGColor
                self.setTitleColor(UI.Color["warning"]!, forState:.Normal)
            }
        }
        
        if self.radius == 0 {
            self.layer.cornerRadius = 0
            
        }else if self.radius == 1 {
            self.layer.cornerRadius = self.frame.size.height / 8
            
        }else if self.radius == 2 {
            self.layer.cornerRadius = self.frame.size.height / 5
            
        }else if self.radius == 3 {
            self.layer.cornerRadius = self.frame.size.height / 2
            
        }else if self.radius == 4 {
            self.layer.cornerRadius = self.frame.size.height
            
        }
        
    }
    
}

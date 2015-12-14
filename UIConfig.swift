//
//  AppUIConfig.swift
//  studentdayi
//
//  Created by FangYan on 15/12/7.
//  Copyright © 2015年 yousi.inc. All rights reserved.
//
/*
****使用说明****

==色彩名说明==
1. 主色（55~75%）的饱和度一般比较高，比较深，使用面积比较大（不与背景灰和背景白比较）
2. 主色所在的位置一定是视觉中心
3. 通常辅助色（20~30%）与主色相临近或互补
4. 点缀色（点缀色 5~8%）一般用饱和度和明亮度高的颜色
5. 通常主色深也是品牌色，主色浅是主导色，当然主导色可以与品牌色完全一样
6. 强调色指需要特殊强调，与主色等区别比较明显的颜色

==色彩名说明==
1. 同一色的临近表达建议只用alpha，临近表达不要超过3色
*/

let YSUI : Dictionary <String,AnyObject> = [
    
    "navigationBar":[
        "backgroundColor" : YSUIColor["primary"]!,
        "textColor" : YSUIColor["white"]!
    ],
    
    
    "card":[
        "backgroundColor" : YSUIColor["white"]!,
        
        "titleColor" : YSUIColor["textPrimary"]!,
        "titleSize" : YSUISize["XL"]!,
        
        "subTitleColor" : YSUIColor["textPrimary"]!,
        "subTitleSize" : YSUISize["NM"]!,
        
        "summaryTextColor" : YSUIColor["textLight"]!,
        "summaryTextSize" : YSUISize["NM"]!,
        
        "PanelTextColor" : YSUIColor["textSecondary"]!,
        "PanelTextSize" : YSUISize["SM"]!,
        "PanelBorderColor" : YSUIColor["linelight"]!,
        "PanelBorderSize" : 1,
        
        "avatarBorderColor" : YSUIColor["black2"]!,
        "avatarBorderSize" : 3,
    ]
    
]

let YSUIColor:Dictionary <String,UIColor> = [
    /*
    * 主配色
    */
    "primary" : UIColor(red: 0x49/255, green: 0xBB/255, blue: 0xCD/255, alpha: 0.96), //主色深
    "primaryLight" : UIColor(red: 0x49/255, green: 0xBB/255, blue: 0xCD/255, alpha: 0.82), //主色浅

    "secondaryA" : UIColor(red: 0xEE/255, green: 0xEE/255, blue: 0xEE/255, alpha: 1.0), //辅助色A
    "secondaryB" : UIColor(red: 0xF6/255, green: 0xF6/255, blue: 0xF6/255, alpha: 1.0), //辅助色B
    "secondaryC" : UIColor(red: 0x49/255, green: 0xBB/255, blue: 0xCD/255, alpha: 0.96), //辅助色C
    
    "highlight" : UIColor(red: 0x35/255, green: 0xE7/255, blue: 0x45/255, alpha: 1.0), //高亮色
    "accent" : UIColor(red: 0x49/255, green: 0xBB/255, blue: 0xCD/255, alpha: 0.96), //点缀色、强调色
    
    /*
    * 文字色
    */
    "textPrimary" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.88), //主色，建议黑或近黑
    "textSecondary" : UIColor(red: 0x6A/255, green: 0x6D/255, blue: 0x7B/255, alpha: 1.0), //辅助色，建议黑或近黑
    "textLight" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.70), //主色的light色
    "textHighlight" : UIColor(red: 0x5E/255, green: 0xB8/255, blue: 0xFA/255, alpha: 1.0), //高亮色
    
    
    /*
    * 线、分割线
    */
    "lineDark" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.20), //深
    "linelight" : UIColor(red: 0xE2/255, green: 0xE3/255, blue: 0xE4/255, alpha: 1.0), //浅
    
    /*
    * 白色
    */
    "white" : UIColor(red: 0xFF/255, green: 0xFF/255, blue: 0xFF/255, alpha: 1.0), //深
    "whiteLight" : UIColor(red: 0xFF/255, green: 0xFF/255, blue: 0xFF/255, alpha: 0.88), //浅
    
    /*
    * 黑色
    */
    "black"  : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 1.0),
    "black8" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.8),
    "black6" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.6),
    "black4" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.4),
    "black3" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.3),
    "black2" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.2),
    "black1" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.1),
    
]

let YSUISize:Dictionary <String,Float> = [
    "XXL":36,
    "XL":32,
    "LG":28,
    "NM":24,
    "SM":22,
    "XS":18,
]

let YSUIShadowSize:Dictionary <String,CGSize> = [
    "LG":CGSizeMake (3.0, 3.0),
    "NM":CGSizeMake (0, 2.0),
    "SM":CGSizeMake (0, 1.0)
]

let YSUIShadowRadius:Dictionary <String,CGSize> = [
    "LG":CGSizeMake (3.0, 3.0),
    "NM":CGSizeMake (0, 2.0),
    "SM":CGSizeMake (0, 1.0)
]


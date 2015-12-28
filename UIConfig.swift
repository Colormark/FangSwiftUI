/*
****使用说明****

==色彩名说明==
1. 主色（55~75%）的饱和度一般比较高，比较深，使用面积比较大（不与背景灰和背景白比较）
2. 主色所在的位置一定是视觉中心
3. 通常辅助色（20~30%）与主色相临近或互补
4. 点缀色（点缀色 5~8%）一般用饱和度和明亮度高的颜色
5. 通常主色深也是品牌色，主色浅是主导色，当然主导色可以与品牌色完全一样
6. 强调色指需要特殊强调，与主色等区别比较明显的颜色，鲜艳的强调色用于你的主要操作按钮以及组件，如开关或滑片。左对齐的部分图标或章节标题也可以使用强调色。

==How==

UI.Color["Primary"]

*/

public struct UI {
    
    static let Color: Dictionary <String,UIColor> = [
        
        "Primary"   : UIColor(red: 0x00, green: 0xD8/255, blue: 0xD8/255, alpha: 1.0),        //主色。
        "Secondary" : UIColor(red: 0x49/255, green: 0xBB/255, blue: 0xCD/255, alpha: 1.0),    //辅助色，次色
        
        "AccentA"   : UIColor(red: 0xEE/255, green: 0xEE/255, blue: 0xEE/255, alpha: 1.0),    //强调色A。
        "AccentB"   : UIColor(red: 0xF6/255, green: 0xF6/255, blue: 0xF6/255, alpha: 1.0),    //强调色B
        "AccentC"   : UIColor(red: 0x49/255, green: 0xBB/255, blue: 0xCD/255, alpha: 0.96),   //强调色C，三个强调色，一般来说有点多
        
        "Warning"   : UIColor(red: 0xFF/255, green: 0x68/255, blue: 0x00/255, alpha: 0.96), //警告
        "Danger"    : UIColor(red: 0xFF/255, green: 0x68/255, blue: 0x00/255, alpha: 0.96), //错误、危险
        "Success"   : UIColor(red: 0xFF/255, green: 0x68/255, blue: 0x00/255, alpha: 0.96), //操作成功、完成
        
        
        /*
        * 线、分割线
        */
        "LineDark"  : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.20), //深
        "LineLight" : UIColor(red: 0xE2/255, green: 0xE3/255, blue: 0xE4/255, alpha: 1.0), //浅
        
        
        /*
        * 黑白，灰度 用色
        * 通常用于背景、文字、分割线用色，请尽量不要修改
        */
        "White"       :  UIColor.whiteColor(),

        "Black50"     :  UIColor(red: 0xFA/255, green: 0xFA/255, blue: 0xFA/255, alpha: 1.0),
        "GhostWhite"  :  UIColor(red: 0xFA/255, green: 0xFA/255, blue: 0xFA/255, alpha: 1.0),
        
        "Black100"    :  UIColor(red: 0xF5/255, green: 0xF5/255, blue: 0xF5/255, alpha: 1.0),
        "WhiteSmoke"  :  UIColor(red: 0xF5/255, green: 0xF5/255, blue: 0xF5/255, alpha: 1.0),
        
        "Black200"    :  UIColor(red: 0xE6/255, green: 0xE6/255, blue: 0xE6/255, alpha: 1.0),
        "Mercury"     :  UIColor(red: 0xF5/255, green: 0xF5/255, blue: 0xF5/255, alpha: 1.0),
        
        "Black200"    :  UIColor(red: 0xCC/255, green: 0xCC/255, blue: 0xCC/255, alpha: 1.0),
        "Siliver"     :  UIColor(red: 0xCC/255, green: 0xCC/255, blue: 0xCC/255, alpha: 1.0),
        
        "Black300"    :  UIColor(red: 0xB3/255, green: 0xB3/255, blue: 0xB3/255, alpha: 1.0),
        "Magnesium"   :  UIColor(red: 0xB3/255, green: 0xB3/255, blue: 0xB3/255, alpha: 1.0),
        
        "Black400"    :  UIColor(red: 0x99/255, green: 0x99/255, blue: 0x99/255, alpha: 1.0),
        "Aluminum"    :  UIColor(red: 0x99/255, green: 0x99/255, blue: 0x99/255, alpha: 1.0),
        
        "Black500"    :  UIColor(red: 0x80/255, green: 0x80/255, blue: 0x80/255, alpha: 1.0),
        "Nickel"      :  UIColor(red: 0x80/255, green: 0x80/255, blue: 0x80/255, alpha: 1.0),
        
        "Black600"    :  UIColor(red: 0x7F/255, green: 0x7F/255, blue: 0x7F/255, alpha: 1.0),
        "Tin"         :  UIColor(red: 0x7F/255, green: 0x7F/255, blue: 0x7F/255, alpha: 1.0),
        
        "Black700"    :  UIColor(red: 0x66/255, green: 0x66/255, blue: 0x66/255, alpha: 1.0),
        "Steel"       :  UIColor(red: 0x66/255, green: 0x66/255, blue: 0x66/255, alpha: 1.0),
        
        "Black800"    :  UIColor(red: 0x4C/255, green: 0x4C/255, blue: 0x4C/255, alpha: 1.0),
        "Iron"        :  UIColor(red: 0x4C/255, green: 0x4C/255, blue: 0x4C/255, alpha: 1.0),
            
        "Black900"    :  UIColor(red: 0x33/255, green: 0x33/255, blue: 0x33/255, alpha: 1.0),
        "Tungsten"    :  UIColor(red: 0x33/255, green: 0x33/255, blue: 0x33/255, alpha: 1.0),
            
        "Black950"    :  UIColor(red: 0x19/255, green: 0x19/255, blue: 0x19/255, alpha: 1.0),
        "Lead"        :  UIColor(red: 0x19/255, green: 0x19/255, blue: 0x19/255, alpha: 1.0),
        
        "Black"       : UIColor.blackColor(),
        
        /*
        * 黑白透明
        */
        "WhiteAlphaLight"      : UIColor(red: 255, green: 255, blue:255, alpha: 0.88), //浅
        "WhiteUltraAlphaLight" : UIColor(red: 255, green: 255, blue: 255, alpha: 0.32), //很浅
        
        "BlackAlphaLight"      : UIColor(red: 0, green: 0, blue: 0, alpha: 0.88), //浅
        "BlackUltraAlphaLight" : UIColor(red: 0, green: 0, blue: 0, alpha: 0.32), //很浅
        
    ]
    
    /*
    * 文字颜色
    */
    let TextColor: Dictionary <String,UIColor> = [
        
        "Defalut" : UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.87),//对于白色背景上的文字，标准 alpha 值为 87%
        "Dark" :    UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.54),//视觉层次偏低的次要文字，应该使用 54%
        "Light" :   UIColor(red: 0x0/255, green: 0x0/255, blue: 0x0/255, alpha: 0.26),//正文和标签中用于提示用户的文字，视觉层次更低，应该使用26%
        "Accent" :  Color["Primary"]!, //使用主色
        
    ]
    
    /*
    * 文字大小
    */
    static let TextSize: Dictionary <String,CGFloat> = [
        "XXXL":42,       //Display1
        "XXL":34,        //Display2
        "XL":24,         //大标题 Headline
        "LG":20,         //Appbar
        "Normal":16,     //小标题 Subhead
        "SM":14,         //正文 按钮文字 Body Button
        "XS":12,         //小字提示
        "XXS":11         //Display3
    ]
    
    /*
    * 布局间隔
    */
    static let Layout: Dictionary <String,CGFloat> = [
        
        "Type"       :   4,         //最小距离和尺寸单元，排版/文字（Type）与间隔为 4dp 的基准网格对齐。在工具条中的图标同样与间隔为 4dp 的基准网格对齐。
        
        "SpaceSM"    :   8,         //所有组件都与间隔为 8dp 的基准网格对齐，
        "Space"      :   16,
        "SpaceLG"    :   32,
        "SpaceXL"    :   48,
        
        "HSpaceSM"    :   10,         //iOS系统，水平间隔的最小单位为10，
        "HSpace"      :   20,
        "HSpaceLG"    :   36,
        "HSpaceXL"    :   48,
        
        "IconSM"     :   16,
        "Icon"       :   24,
        "IconLG"     :   32,
        "IconXL"     :   40,
        "IconXXL"    :   56,
        "IconXXXL"   :   64
        
    ]
    
    /*
    * 按钮高度
    */
    static let ButtonSize: Dictionary <String,CGFloat> = [
        "XL"         :72,
        "LG"         :56,
        "Normal"     :40,
        "SM"         :28,
        "XS"         :16
    ]
    
    /*
    * 圆角
    */
    static let Radius: Dictionary <String,CGFloat> = [
        "None"       :0,
        "Tiny"       :0.15,
        "Normal"     :0.24,
        "Round"      :0.5,
        "Cricle"     :1
    ]
    
    /*
    * 阴影
    */
    struct Shadow {
        
        static let offset: Dictionary <String,CGSize> = [
            "Tiny"       :CGSizeMake(0,1),
            "Normal"     :CGSizeMake(1,2),
            "Strong"     :CGSizeMake(4,4),
            "Huge"       :CGSizeMake(3,3)
        ]
        
        static let Color: Dictionary <String,UIColor> = [
            "Dark"     : UIColor(red: 0, green: 0, blue: 0, alpha: 0.58),
            "Light"     : UIColor(red: 0, green: 0, blue: 0, alpha: 0.32)
        ]
        
        
    }

    
}

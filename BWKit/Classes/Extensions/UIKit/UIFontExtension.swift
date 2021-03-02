//
//  UIFontExtension.swift
//  PceggsAPP
//
//  Created by fwb on 2020/7/10.
//  Copyright © 2020 YT. All rights reserved.
//

import UIKit

let CURRENT_WIDTH:CGFloat = 375.0
func scaleFrom720(_ x:CGFloat)->CGFloat{
    return (x)/(CURRENT_WIDTH/min(SCREEN_WIDTH, SCREEN_HEIGHT))
}
func scaleForText720(_ x:CGFloat)->CGFloat{
    if(SCREEN_WIDTH == 320.0){
        return x-1;
    }else if(SCREEN_WIDTH == 375.0){
        return x;
    }else{
        return x+1;
    }
}

func KFONT(_ x:CGFloat)->UIFont{
    return UIFont.systemFont(ofSize: scaleForText720(x))
}
func KFONT_Semibold(_ x:CGFloat)->UIFont{
    if #available(iOS 8.2, *) {
        return UIFont.systemFont(ofSize: scaleForText720(x), weight: .semibold)
    }
    return KFONT(x)
}
func KFONT_Bold(_ x:CGFloat)->UIFont{
    if #available(iOS 8.2, *) {
        return UIFont.systemFont(ofSize: scaleForText720(x), weight: .bold)
    }
    return KFONT(x)
    
}
func KFONT_Medium(_ x:CGFloat)->UIFont{
    if #available(iOS 8.2, *) {
        return UIFont.systemFont(ofSize: scaleForText720(x), weight: .medium)
    }
    return KFONT(x)
}
func KFONT_DINMedium(_ x:CGFloat)->UIFont{
    return UIFont.init(name: "Medium", size: scaleForText720(x))!
}


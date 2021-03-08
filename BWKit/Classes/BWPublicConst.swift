//
//  GlobalConst.swift
//  Swift_Projects
//
//  Created by macbook on 16/11/2.
//  Copyright © 2016年 mengxia. All rights reserved.
//

import UIKit
struct BWConst{
    public static let SCREEN_WIDTH:CGFloat = UIScreen.main.bounds.width
    public static let SCREEN_HEIGHT:CGFloat = UIScreen.main.bounds.height
    
    /*本地文件路径*/
    public let kPATH_OF_DOCUMENT = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentationDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first!
    
    public let kPATH_OF_DOCUMENT1 = NSHomeDirectory().appending("/Documents")
    public let KWindow:UIView = (UIApplication.shared.delegate?.window)!!
    
    

    public let kStatusBarHeight:CGFloat = (UIDevice.bw.isIPhoneX_After() ? 44.0 : 20.0)
    public let KNavHeight:CGFloat = 44.0
    public var KTopHeight:CGFloat {kStatusBarHeight + KNavHeight}
    public let kBottomBarHeight:CGFloat = (UIDevice.bw.isIPhoneX_After() ? 83.0 : 49.0)
}

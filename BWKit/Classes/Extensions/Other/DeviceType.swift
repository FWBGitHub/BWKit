//
//  DeviceType.swift
//  Qc 4.0.0
//
//  Created by 方文炳 on 2017/5/18.
//  Copyright © 2017年 Aheading. All rights reserved.
//

import UIKit
enum DeviceType:Int {
    case DT_UNKNOWN = 0
    case DT_iPhone4             //iPhone4、iPhone4S
    case DT_iPhone5             //iPhone5、iPhone5C和iPhone5S
    case DT_iPhone6             //iPhone6、iPhone6S、iPhone7
    case DT_iPhone6_Plus        //iPhone6 Plus、iPhone6S Plus、iPhone7 Plus
    case DT_iPad                //iPad1、iPad2
    case DT_iPad_Mini           //iPad mini1
    case DT_Ipad_Retina         //New iPad、iPad4和iPad Air
    case DT_iPad_Mini_Retine    //iPad mini2
}

extension UIDevice{
    static var deviceType:DeviceType{
        guard let size = UIScreen.main.currentMode?.size else{
            return .DT_UNKNOWN
        }
        switch size {
        case CGSize(width: 640 , height: 690 ):return.DT_iPhone4
        case CGSize(width: 640 , height: 1136):return.DT_iPhone5
        case CGSize(width: 750 , height: 1334):return.DT_iPhone6
        case CGSize(width: 1242, height: 2208):return.DT_iPhone6_Plus
        case CGSize(width: 1024, height: 768 ):return.DT_iPad
        case CGSize(width: 768 , height: 1024):return.DT_iPad_Mini
        case CGSize(width: 2048, height: 1536):return.DT_Ipad_Retina
        case CGSize(width: 1536, height: 2048):return.DT_iPad_Mini_Retine
        default: return.DT_UNKNOWN
        }
    }
    static func isPhone() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    static func isPad() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    static func isIPhone4S() -> Bool {
        return deviceType == .DT_iPhone4
    }
    static func isIPhone5() -> Bool {
        return deviceType == .DT_iPhone5
    }
    static func isIPhone6() -> Bool {
        return deviceType == .DT_iPhone6
    }
    static func isIPhone6Plus() -> Bool {
        return deviceType == .DT_iPhone6_Plus
    }
    static func isIPhoneX_After() -> Bool{
        if #available(iOS 11.0, *) {
            return (UIApplication.shared.keyWindow?.safeAreaInsets.bottom)! > 0.0
        }
        return false;
    }
}

extension UIDevice {
     ///判断当前设备的系统版本是否大于或者等于#version
   static func isGE(_ version: String) -> Bool {
        return compare(version: version) != .orderedAscending
    }
    
   static private func compare(version: String) -> ComparisonResult {
    DPrint( "currnt=\(UIDevice.current.systemVersion)")
        return UIDevice.current.systemVersion.compare(version)
    }
}
extension UIDevice {
    ///获取app版本
    static var appVersion:String{
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    }
    ///获取appName
    static var appName:String{
        return Bundle.main.infoDictionary?["CFBundleName"] as! String
    }
    ///获取app版本传给后台
    static var appVersionNumber:String{
        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
        return version.replacingOccurrences(of: ".", with: "")
    }
    ///获取手机型号
    static var phoneModel:String{
        var systemInfo = utsname()
        uname(&systemInfo)
        return withUnsafeMutablePointer(to: &systemInfo.machine.0) { ptr in
            return String(cString: ptr)
        }
    }
    static var systemVersionStr:String{
        return UIDevice.current.systemVersion
    }
}

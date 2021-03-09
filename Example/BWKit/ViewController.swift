//
//  ViewController.swift
//  BWKit
//
//  Created by FWBGitHub on 03/02/2021.
//  Copyright (c) 2021 FWBGitHub. All rights reserved.
//

import UIKit
import BWKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let str:String = "15757181084"
        let btn = BWTimeDownButton()
        btn.timeDown = 60
        btn.bw_setTitleColor(UIColor(0xFE6040), timeDownstate: .BWTimeDownNormal)
        btn.bw_setTitle(" 获取验证码 ", timeDownstate: .BWTimeDownNormal)
        btn.bw_setTitle(" 获取验证码 ", timeDownstate: .BWTimeDowned)
        btn.bw_setTitle("重新获取(\(BWTimeDownTitle)", timeDownstate: .BWTimeDowning)
        btn.bw_setTitleColor(UIColor(0xFE6040), timeDownstate: .BWTimeDowning)
        btn.timeColor = UIColor(0xFE6040)
        btn.startTimeDown()
        btn.stopTimeDown()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.bw.showHint("123123")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}


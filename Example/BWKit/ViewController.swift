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
        BWPrint("path=\(BWConst.Documents_Path)")
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.bw.showHint("123123")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}


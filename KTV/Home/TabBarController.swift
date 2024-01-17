//
//  TabBarController.swift
//  KTV
//
//  Created by 김민준 on 1/17/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    /// 최상위 Controller인 TabBar에 화면 회전 세로로 고정시키기 적용
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .portrait
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

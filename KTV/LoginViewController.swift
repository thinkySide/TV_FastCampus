//
//  LoginViewController.swift
//  KTV
//
//  Created by hyeonggyu.kim on 2023/09/06.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 로그인 버튼 설정
        loginButton.layer.cornerRadius = 19
        loginButton.layer.borderColor = UIColor(resource: .mainBrown).cgColor
        loginButton.layer.borderWidth = 1
    }

    @IBAction func buttonDidTap(_ sender: UIButton) {
    }
    
}


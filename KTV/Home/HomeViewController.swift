//
//  HomeViewController.swift
//  KTV
//
//  Created by 김민준 on 1/17/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    /// 해당 VC에서 사용할 StatusBar 스타일
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        
        /// UINib을 생성할 때 bundle 인자값은 nil을 넣어줘도 된다.
        /// -> Default 값이 main이기 때문.
        tableView.register(
            UINib(nibName: HomeHeaderCell.identifier, bundle: .main),
            forCellReuseIdentifier: HomeHeaderCell.identifier
        )
        
        tableView.register(
            UINib(nibName: HomeVideoCell.identifier, bundle: .main),
            forCellReuseIdentifier: HomeVideoCell.identifier
        )
        
        tableView.register(
            UINib(nibName: HomeRecommendContainerCell.identifier, bundle: .main),
            forCellReuseIdentifier: HomeRecommendContainerCell.identifier
        )
        
        tableView.register(
            UINib(nibName: HomeFooterCell.identifier, bundle: .main),
            forCellReuseIdentifier: HomeFooterCell.identifier
        )
        
        /// 더미용 셀
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "empty")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension HomeViewController: UITableViewDataSource & UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return HomeSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = HomeSection(rawValue: section) else { return 0 }
        
        switch section {
        case .header: return 1
        case .video: return 2
        case .recommend: return 1
        case .footer: return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let section = HomeSection(rawValue: indexPath.section) else { return 0 }
        
        switch section {
        case .header: return HomeHeaderCell.height
        case .video: return HomeVideoCell.height
        case .recommend: return HomeRecommendContainerCell.height
        case .footer: return HomeFooterCell.height
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = HomeSection(rawValue: indexPath.section) else {
            return tableView.dequeueReusableCell(withIdentifier: "empty", for: indexPath)
        }
        
        switch section {
        case .header:
            return tableView.dequeueReusableCell(
                withIdentifier: HomeHeaderCell.identifier,
                for: indexPath
            )
            
        case .video:
            return tableView.dequeueReusableCell(
                withIdentifier: HomeVideoCell.identifier,
                for: indexPath
            )
            
        case .recommend:
            return tableView.dequeueReusableCell(
                withIdentifier: HomeRecommendContainerCell.identifier,
                for: indexPath
            )
            
        case .footer:
            return tableView.dequeueReusableCell(
                withIdentifier: HomeFooterCell.identifier,
                for: indexPath
            )
        }
    }
}

extension HomeViewController: HomeRecommendContainerCellDelegate {
    func homeRecommendContainerCell(_ cell: HomeRecommendContainerCell, didSelectItemAt index: Int) {
        print("home recommend cell did select item at \(index)")
    }
}

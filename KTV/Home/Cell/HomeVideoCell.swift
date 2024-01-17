//
//  HomeVideoCell.swift
//  KTV
//
//  Created by 김민준 on 1/17/24.
//

import UIKit

class HomeVideoCell: UITableViewCell {
    
    static let identifier = "HomeVideoCell"
    static let height: CGFloat = 320
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var hotImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var channelTitleLabel: UILabel!
    @IBOutlet weak var channelSubtitleLabel: UILabel!
    
    /// Nib 파일의 경우 해당 메서드에서 처리해야함.
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // ContainerView 처리
        containerView.layer.cornerRadius = 10
        containerView.layer.borderColor = UIColor(resource: .strokeLight).cgColor
        containerView.layer.borderWidth = 1
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}

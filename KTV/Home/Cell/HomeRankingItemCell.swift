//
//  HomeRankingItemCell.swift
//  KTV
//
//  Created by Lecture on 2023/08/24.
//

import UIKit

class HomeRankingItemCell: UICollectionViewCell {
    
    static let identifier: String = "HomeRankingItemCell"

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.numberLabel.text = nil
    }
    
    func setRank(_ rank: Int) {
        self.numberLabel.text = "\(rank)"
    }

}

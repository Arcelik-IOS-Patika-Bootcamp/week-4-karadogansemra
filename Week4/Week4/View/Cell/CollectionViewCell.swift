//
//  CollectionViewCell.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 15.06.2022.
//

import UIKit
import Kingfisher

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var coinImageView: UIImageView!
    @IBOutlet private weak var coinNameLabel: UILabel!
    @IBOutlet private weak var coinCashLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCell(coinImageView: String, coinNameLabel: String, coinCashLabel: String) {
   
     let urlImage = URL(string: coinImageView)
     self.coinImageView.kf.setImage(with: urlImage)
     
    // self.coinImageView.image = coinImageView
     self.coinNameLabel.text = coinNameLabel
     self.coinCashLabel.text = coinCashLabel
     
    }

}

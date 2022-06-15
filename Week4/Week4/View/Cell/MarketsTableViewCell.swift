//
//  MarketsTableViewCell.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import UIKit
import Kingfisher
class MarketsTableViewCell: UITableViewCell {

    @IBOutlet private weak var coinImageView: UIImageView!
    @IBOutlet private weak var coinSubnameLabel: UILabel!
    @IBOutlet private weak var coinNameLabel: UILabel!
    @IBOutlet private weak var coinCashLabel: UILabel!
    @IBOutlet private weak var coinSubcashLabel: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK:- Methods
   func setCell(coinImageView: String, coinNameLabel: String, coinSubnameLabel: String,  coinCashLabel: String, coinSubcashLabel: String) {
  
    let urlImage = URL(string: coinImageView)
    self.coinImageView.kf.setImage(with: urlImage)
    
   // self.coinImageView.image = coinImageView
    self.coinNameLabel.text = coinNameLabel
    self.coinSubnameLabel.text = coinSubnameLabel
    self.coinCashLabel.text = coinCashLabel
    self.coinSubcashLabel.text = coinSubcashLabel
    
   }
    
}

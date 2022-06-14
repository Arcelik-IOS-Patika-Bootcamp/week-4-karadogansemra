//
//  MarketsTableViewCell.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import UIKit

class MarketsTableViewCell: UITableViewCell {

    @IBOutlet weak var coinImageView: UIImageView!
    @IBOutlet weak var coinSubnameLabel: UILabel!
    @IBOutlet weak var coinNameLabel: UILabel!
    @IBOutlet weak var coinCashLabel: UILabel!
    @IBOutlet weak var coinSubcashLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK:- Methods
   func setCell(coinImageView: UIImage, coinNameLabel: String, coinSubnameLabel: String,  coinCashLabel: String, coinSubcashLabel: String) {
  
    self.coinImageView.image = coinImageView
    self.coinNameLabel.text = coinNameLabel
    self.coinSubnameLabel.text = coinSubnameLabel
    self.coinCashLabel.text = coinCashLabel
    self.coinSubcashLabel.text = coinSubcashLabel
    
   }
    
}

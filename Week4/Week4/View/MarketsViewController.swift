//
//  MarketsViewController.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import UIKit

class MarketsViewController: UIViewController {
      
    var presenter: ViewToPresenterProtocol?
    
    @IBOutlet private weak var marketsTableView: UITableView!
    @IBOutlet private weak var marketsSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableView()
        presenter?.updateView()
    }
    
    
    private func setUpTableView() {
        marketsTableView.dataSource = self
        marketsTableView.delegate = self
        marketsTableView.tableFooterView = UIView()
           
        marketsTableView.register(UINib(nibName: "MarketsTableViewCell", bundle: .main), forCellReuseIdentifier: "MarketsTableViewCell")
    }
    

}

// MARK: - UITableViewDataSource
extension MarketsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getCoinListCount() ?? 0
        //return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MarketsTableViewCell", for: indexPath) as? MarketsTableViewCell
        let row = indexPath.row
        let coins = presenter?.getCoins(index: row)
        
       /* guard let coinImage = coins?.image, let coinName = coins?.name, let coinSubname = coins?.symbol, let coinCash = coins?.current_price, let coinSubcash = coins?.id else {
            return cell ?? UITableViewCell()
        }
        
       
        cell?.setCell(coinImageView: coinImage, coinNameLabel: coinName, coinSubnameLabel: coinSubname, coinCashLabel: coinCash, coinSubcashLabel: coinSubcash)*/
        
        /*cell?.setCell(coinImageView: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png", coinNameLabel: "Bitcoin", coinSubnameLabel: "USDT", coinCashLabel: "324223.234 TL", coinSubcashLabel: "34,98")*/
        return cell ?? UITableViewCell()
    }
}

// MARK: - UITableViewDelegate
extension MarketsViewController: UITableViewDelegate {}

// MARK: - PresenterToViewProtocol
extension MarketsViewController: PresenterToViewProtocol {

    func showCoins() {
        //DispatchQueue.main.async {
            self.marketsTableView.reloadData()
        //}
        
    }
    
    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Coins", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}



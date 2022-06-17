//
//  HomeViewController.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import UIKit
import Alamofire
class HomeViewController: UIViewController {
    
    var presenter: ViewToPresenterProtocol?
    
    @IBOutlet private weak var homePageControl: UIPageControl!
    @IBOutlet private weak var homeCollectionView: UICollectionView!
    @IBOutlet private weak var homeScrollView: UIScrollView!
    @IBOutlet private weak var homeScrollTitleLabel: UILabel!
    @IBOutlet private weak var homeScrollCashLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCollectionView()
        
       
    }
    
    private func setUpCollectionView() {
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")

    }
    

}

// MARK: - UICollectionViewDelegate
extension HomeViewController: UICollectionViewDelegate{}

// MARK: - UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.getCoinListCount() ?? 0
        //return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        let row = indexPath.row
        let coins = presenter?.getCoins(index: row)
        
        guard let coinImage = coins?.image, let coinName = coins?.name, let coinCash = coins?.currentPrice else {
            return cell ?? UICollectionViewCell()
        }
        
       
        cell?.setCell(coinImageView: coinImage, coinNameLabel: coinName, coinCashLabel: String(coinCash))
        
           
        /*cell?.setCell(coinImageView: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png", coinNameLabel: "Bitcoin",  coinCashLabel: "324223.234 TL")*/
        
        return cell ?? UICollectionViewCell()
    }
}

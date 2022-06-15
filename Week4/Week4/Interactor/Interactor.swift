//
//  Interactor.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import Foundation
import Alamofire
class Interactor: PresentorToInteractorProtocol {
    var coins: [CoinsModel]?
   
    // MARK: - Properties
    weak var presenter: InteractorToPresenterProtocol?
    
    // MARK: - Methods
    func fetchCoins() {
     
     
           AF.request(Constants.URL).response { response in
            if(response.response?.statusCode == 200){
                guard let data = response.data else { return }
                do {
                   /* let decoder = JSONDecoder()
                    let coinsResponse = try decoder.decode(CoinsResponse.self, from: data)
                    guard let coinscurrency = coinsResponse.JSON else { return }
                    self.coins = coinscurrency*/
                    
                    
                    let model = try JSONDecoder().decode([CoinsModel].self, from: data)
                    self.coins = model
                    
                     
                     
                     //DispatchQueue.main.async {
                         self.presenter?.Fetched()
                     //}
                                     
                    
                    
                } catch let error {
                    print(error)
                }
            }
            else {
                self.presenter?.FetchedFailed()
            }
        }
    }
    
   
    
}

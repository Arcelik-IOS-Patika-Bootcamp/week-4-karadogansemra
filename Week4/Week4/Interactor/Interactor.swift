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
                    
                    let model = try JSONDecoder().decode([CoinsModel].self, from: data) // Get json data decoder
                    self.coins = model // set data coins model
                    self.presenter?.Fetched() // send to presenter
                   
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

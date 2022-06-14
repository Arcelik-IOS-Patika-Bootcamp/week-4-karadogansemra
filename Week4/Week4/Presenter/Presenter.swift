//
//  Presenter.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import Foundation

class Presenter: ViewToPresenterProtocol {
 
    // MARK: - Properties
    weak var view: PresenterToViewProtocol?
    var interactor: PresentorToInteractorProtocol?
    var router: PresenterToRouterProtocol?
    
    // MARK: - Methods
    func updateView() {
        interactor?.fetchCoins()
    }
    
    func getCoinListCount() -> Int? {
        return interactor?.coins?.count
    }
    
    func getCoins(index: Int) -> CoinsModel? {
        return interactor?.coins?[index]
    }
   
}

// MARK: - InteractorToPresenterProtocol
extension Presenter: InteractorToPresenterProtocol {
    
    func Fetched() {
        view?.showCoins()
    }
    
    func FetchedFailed() {
        view?.showError()
    }
}

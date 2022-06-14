//
//  Protocols.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import Foundation
import UIKit

protocol PresenterToViewProtocol: AnyObject {
    func showCoins()
    func showError()
}

protocol InteractorToPresenterProtocol: AnyObject {
    func Fetched()
    func FetchedFailed()
}

protocol PresentorToInteractorProtocol: AnyObject {
    var presenter: InteractorToPresenterProtocol? { get set }
    var coins: [CoinsModel]? { get }
    
    func fetchCoins()
}

protocol ViewToPresenterProtocol: AnyObject {
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresentorToInteractorProtocol? { get set }
    var router: PresenterToRouterProtocol? { get set }
    
    func updateView()
    func getCoinListCount() -> Int?
    func getCoins(index: Int) -> CoinsModel?
}

protocol PresenterToRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
}

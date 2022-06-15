//
//  Router.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 14.06.2022.
//

import Foundation
import UIKit

class Router: PresenterToRouterProtocol{
  
        
    // MARK: - Methods
    class func createModule() -> UIViewController {
           
       let view = MarketsViewController()
       let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = Presenter()
       let interactor: PresentorToInteractorProtocol = Interactor()
       let router: PresenterToRouterProtocol = Router()
       
       view.presenter = presenter
       presenter.view = view
       presenter.router = router
       presenter.interactor = interactor
       interactor.presenter = presenter
    
       return view
    }
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
}




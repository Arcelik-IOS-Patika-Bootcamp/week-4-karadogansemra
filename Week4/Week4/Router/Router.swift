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
  
   class func createHomeModule() -> UIViewController {
           
       let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
    
       let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = Presenter()
       let interactor: PresentorToInteractorProtocol = Interactor()
       let router: PresenterToRouterProtocol = Router()
       
       view.presenter = presenter
       presenter.view = view as? PresenterToViewProtocol
       presenter.router = router
       presenter.interactor = interactor
       interactor.presenter = presenter
    
       return view
    }
    
    class func createMarketsModule() -> UIViewController {
            
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MarketsViewController") as! MarketsViewController
     
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




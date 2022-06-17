//
//  TabBarController.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 15.06.2022.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    var presenter: ViewToPresenterProtocol?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
//        let first = HomeViewController()
//        let second = MarketsViewController()
//
//        self.viewControllers = [first, second]
       
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

        if viewController is HomeViewController {
            print("First tab")
            presenter?.updateView()
//            let vc = Router.createHomeModule()
//            self.show(vc as UIViewController, sender: vc)
        
        } else if viewController is MarketsViewController {
            print("Second tab")
//            let vc = Router.createMarketsModule()
//            self.show(vc as UIViewController, sender: vc)
        }
        else if viewController is BuyAndSellViewController {
           print("Third tab")
        }
        else if viewController is WalletViewController {
           print("Fourth tab")
        }
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //..
        
    }

}

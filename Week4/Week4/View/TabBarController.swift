//
//  TabBarController.swift
//  Week4
//
//  Created by Semra KARADOĞAN on 15.06.2022.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
       
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

        if viewController is HomeViewController {
            print("First tab")
            Router.createHomeModule()
         
        
        } else if viewController is MarketsViewController {
            print("Second tab")
            Router.createMarketsModule()
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

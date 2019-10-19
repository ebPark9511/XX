//
//  MainScene.swift
//  XX
//
//  Created by 박은비 on 19/10/2019.
//  Copyright © 2019 YAPP. All rights reserved.
//

import UIKit
enum MainScene {
    case main(MainViewModel)
//    case signIn(SignInViewModel)
}

extension MainScene: SceneType {
    func instantiate(from storyboard: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch self {
        case .main(let viewModel):
            guard let navigationController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as? UINavigationController,
                var viewController = navigationController.viewControllers.first as? MainViewController
                else {
                    return UIViewController()
            }
            
            viewController.bind(viewModel: viewModel)
            return navigationController
//        case  .signUp(let viewModel):
//            guard var viewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else { return UIViewController() }
//
//            viewController.bind(viewModel: viewModel)
//            return viewController
        }
    }
    
    func instantiate() -> UIViewController {
        return instantiate(from: "Main")
    }
}

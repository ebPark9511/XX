//
//  SignInViewController.swift
//  XX
//
//  Created by Seonghun Kim on 29/09/2019.
//  Copyright © 2019 ebpark. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        performSegue(withIdentifier: "pushSample", sender: nil)
    }
}

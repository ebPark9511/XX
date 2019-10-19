//
//  MainViewController.swift
//  XX
//
//  Created by 박은비 on 19/10/2019.
//  Copyright © 2019 YAPP. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    @IBOutlet weak var spendDetailMoveButton: UIButton!
    @IBOutlet weak var addSpendMoveButton: UIButton!
    
    var viewModel: MainViewModel?
}

extension MainViewController: ViewModelBindableType {
    func bindViewModel() {
        guard let viewModel = viewModel else { return }
        spendDetailMoveButton.rx.action = viewModel.requestSpendDetailMoveAction()
        addSpendMoveButton.rx.action = viewModel.requestAddSpendMoveMoveAction()
    }
}

//
//  PMainViewCtrl.swift
//  BasicSwift
//
//  Created by 배정길 on 11/2/24.
//

import UIKit

class PMainViewCtrl: UIViewController {
    
    let viewModel = CommemViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bindViewModel()
    }
    
    private func bindViewModel() {
        viewModel.onBackButtonPressed = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
    }
    
    // 스토리보드에서 뒤로 가기 버튼에 연결
    @IBAction func backButtonTapped(_ sender: UIButton) {
        viewModel.backButtonPressed()
    }
}
    

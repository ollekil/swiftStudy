//
//  BMainViewCtrl.swift
//  BasicSwift
//
//  Created by 배정길 on 11/2/24.
//

import UIKit

class BMainViewCtrl: UIViewController {
    
    let viewModel = CommemViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bindViewModel()
        study()
    }
    
    private func bindViewModel() {
        viewModel.onBackButtonPressed = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
    }
    
    // 스터디를 위한 간단한 함수
    func study() {
        print("study")
    }
    
    
    // 스토리보드에서 뒤로 가기 버튼에 연결
    @IBAction func backButtonTapped(_ sender: UIButton) {
        viewModel.backButtonPressed()
    }
    
}

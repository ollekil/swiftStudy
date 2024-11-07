//
//  BMainViewCtrl.swift
//  BasicSwift
//
//  Created by 배정길 on 11/2/24.
//

import UIKit
import Combine

class BMainViewCtrl: UIViewController {
    
    let viewModel = CommemViewModel()
    let bViewModel = BMainViewModel()
    
    // 구독 취소를 위한 컬랙션
    private var cancellables = Set<AnyCancellable>()

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
        
        bViewModel.alertTrigger.sink { [weak self] message in
            self?.showAlert(message: message)
        }
        .store(in: &cancellables)
    }
    
    // 스터디를 위한 간단한 함수
    func study() {
        print("study")
        var str = "안녕하세요."
        bViewModel.printMemoryAddress(of: &str)
    }
    
    // 얼럿 띄우기
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    // 버튼 클릭시 얼럿 띄우기
    @IBAction func buttonTapped(_ sender: UIButton) {
        bViewModel.buttonTapped()
    }
    
    // 스토리보드에서 뒤로 가기 버튼에 연결
    @IBAction func backButtonTapped(_ sender: UIButton) {
        viewModel.backButtonPressed()
    }
    
}

//
//  CommemViewModel.swift
//  SwiftStudy
//
//  Created by 배정길 on 11/3/24.
//

import UIKit

class CommemViewModel {
    // 뒤로 가기 이벤트를 처리할 클로저
    var onBackButtonPressed: (() -> Void)?
    
    // 뒤로 가기 이벤트 메서드
    func backButtonPressed() {
        onBackButtonPressed?()
    }
}

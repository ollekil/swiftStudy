//
//  BMainViewModel.swift
//  BasicSwift
//
//  Created by 배정길 on 11/2/24.
//

import UIKit

class BMainViewModel {
    
    // 변수의 메모리 주소를 확인하는 함수
    // T -> 제네릭 타입 파라미터 (특정 타입에 국한되지 않고 여러 타입을 처리함)
    // inout -> 변수의 주소 값을 전달. 함수 내에서 해당 변수의 값을 직접 수정할수 있게 함
    // withUnsafePointer -> 변수의 메모리 주소에 접근 할수 있도록 하는 함수, 이를 통해 특정 변수의 메모리 주소를 직접 확인하거나, 해당 주소를 사용하여 메모리 관리를 할수 있음
    func printMemoryAddress<T>(of value: inout T) {
        withUnsafePointer(to: &value) { pointer in
            print("Memory address of value: \(pointer)")
        }
    }
}

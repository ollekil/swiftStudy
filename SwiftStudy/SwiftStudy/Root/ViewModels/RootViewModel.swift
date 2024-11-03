//
//  RootViewModel.swift
//  BasicSwift
//
//  Created by 배정길 on 10/30/24.
//

import UIKit

class RootViewModel {
    
    // StudyTopic에서 데이터 가져오기
    private(set) var studyTopics: [StudyTopic] = StudyTopic.topics
    
    // 선택된 cell 대한 이벤트 클로저
    var onTopicSelected: ((UIViewController) -> Void)?
    
    // 선택된 cell의 ViewController를 생성하는 메서드
    func selectTopic(at index: Int) {
        guard index >= 0 && index < studyTopics.count else { return }
        let selectedTopic = studyTopics[index]
        
        // 각 StudyTopic의 storyboardName을 사용하여 스토리보드 인스턴스화
        let storyboard = UIStoryboard(name: selectedTopic.storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: selectedTopic.viewControllerType))
        onTopicSelected?(viewController)
    }
}

//
//  StudyTopic.swift
//  BasicSwift
//
//  Created by 배정길 on 10/30/24.
//

import UIKit

struct StudyTopic {
    let title: String                              // 타이틀
    let description: String                        // 설명
    let viewControllerType: UIViewController.Type  // 해당 주제의 ViewController 타입
    let storyboardName: String                     // 실제 스토리보드 파일 이름 추가
    
    // 정적 배열로 데이터 관리
    static let topics: [StudyTopic] = [
        StudyTopic(title: "배정길 Study", description: "배정길 스터디 화면", viewControllerType: BMainViewCtrl.self, storyboardName: "BMain"),
        StudyTopic(title: "김태수 Study", description: "김태수 스터디 화면", viewControllerType: KMainViewCtrl.self, storyboardName: "KMain"),
        StudyTopic(title: "박진경 Study", description: "박진경 스터디 화면", viewControllerType: PMainViewCtrl.self, storyboardName: "PMain")
    ]
}

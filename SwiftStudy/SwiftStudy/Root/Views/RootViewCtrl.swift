//
//  RootViewCtrl.swift
//  BasicSwift
//
//  Created by 배정길 on 10/30/24.
//

import UIKit

class RootViewCtrl: UIViewController {

    private let viewModel = RootViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        bindViewModel()
    }
    
    private func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    private func bindViewModel() {
        // ViewModel 에서 선택된 ViewController 를 전달 받아 push 처리
        viewModel.onTopicSelected = { [weak self] viewController in
            self?.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

// MARK: - UITableViewDataSource
extension RootViewCtrl: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.studyTopics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let topic = viewModel.studyTopics[indexPath.row]
        cell.textLabel?.text = topic.title
        return cell
    }
}

// MARK: - UITableViewDelegate
extension RootViewCtrl: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.selectTopic(at: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

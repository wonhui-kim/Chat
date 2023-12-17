//
//  ViewController.swift
//  Chat
//
//  Created by kim-wonhui on 2023/12/17.
//

import UIKit

final class ViewController: UIViewController {
    
    private let chatTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setConstraint()
        self.setChatTableView()
    }
    
    
    private func setChatTableView() {
        self.chatTableView.dataSource = self
        self.chatTableView.dataSource = self
        
        self.chatTableView.register(ChatTableViewCell.self, forCellReuseIdentifier: ChatTableViewCell.cellIdentifier)
    }
    
    private func setConstraint() {
        self.view.addSubview(chatTableView)
        
        NSLayoutConstraint.activate([
            chatTableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            chatTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            chatTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            chatTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ChatTableViewCell.cellIdentifier, for: indexPath) as? ChatTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}



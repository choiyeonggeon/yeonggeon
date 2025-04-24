//
//  PhoneBookViewController.swift
//  PoketmonApp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit
import CoreData
import SnapKit

class FriendListViewController: UIViewController {
    
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
        TableViewCell()
    }
    
    func setupNavigationBar() {
        title = "친구 목록"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(addFriendTapped))
    }
    
    @objc func addFriendTapped() {
        // 친구 추가 로직
    }

    func setupTableView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "FriendCell")
        tableView.rowHeight = 80
    }
}

extension FriendListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // 임시 데이터
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

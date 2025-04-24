//
//  TableView.swift
//  poketmonAppp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit
import SnapKit

class TableViewController: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    var contacts: [Contact] = []
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTableView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTableView()
    }

    private func setupTableView() {
        rowHeight = 80
        dataSource = self
        delegate = self
        register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return contacts.count // 데이터 소스 배열의 개수 반환
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let contact = contacts[indexPath.row]
        cell.userName.text = contact.userName
        cell.userNum.text = contact.userNum
        cell.userImage.image = contact.userImage
        return cell
    }
}

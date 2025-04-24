//
//  ViewController.swift
//  PoketmonApp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit
import SnapKit
import Alamofire

class MainViewController: UIViewController {
    
    var contactList: [Contact] = []
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavigationBar()
        setUpTableView()
        setUpDummyData()
    }
    
    private func setUpNavigationBar() {
        title = "친구 목록"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(addButtonTapped))
    }
    
    @objc func addButtonTapped() {
        let MainViewController = UIViewController()
        navigationController?.pushViewController(MainViewController, animated: true)
    }
    
    private func setUpTableView() {
        
    }
    
    private func setUpDummyData() {
        
    }


}


//
//  ViewController.swift
//  poketmonAppp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit
import SnapKit

class mainViewController: UIViewController {

    let mainTableView = TableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(mainTableView)


        navigationBarSetup()
        setupConstraints()
       
        TableView.userData = [
                   (userImage: UIImage(named: "image")!, userName: "name", userNum: "010-1234-5678"),
                   (userImage: UIImage(named: "image")!, userName: "name", userNum: "010-8765-4321")
               ]
           }

    //navigationBarSetup 설정
    private func navigationBarSetup() {
//        let navigationItem = UINavigationItem(title: "친구 목록")
        let addBtn = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(addBtnTapped))
        self.navigationItem.rightBarButtonItem = addBtn
        self.title = "친구 목록"
    }

    private func setupConstraints() {
        mainTableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }

    // addBtnTapped 메서드 생성
    @objc private func addBtnTapped() {
        let userContact = User
        let backBtn = UIBarButtonItem()
        backBtn.title = "Back"
        self.navigationItem.backBarButtonItem = backBtn
        self.navigationController?.pushViewController(userContact, animated: true)
    }
}

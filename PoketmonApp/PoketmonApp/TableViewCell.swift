//
//  TableViewCell.swift
//  PoketmonApp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit
import CoreData
import SnapKit

class TableViewCell: UITableViewCell {
    
    let profileImageView = UIImageView()
    let nameLabel = UILabel()
    let phoneLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        contentView.addSubview(profileImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(phoneLabel)

        profileImageView.layer.cornerRadius = 30
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.borderColor = UIColor.lightGray.cgColor
        profileImageView.backgroundColor = .gray // 임시 배경색

        nameLabel.text = "영건"
        phoneLabel.text = "010-1234-5678"
        
        profileImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(60)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(profileImageView.snp.right).offset(20)
            make.top.equalTo(profileImageView.snp.top).offset(5)
        }

        phoneLabel.snp.makeConstraints { make in
            make.left.equalTo(nameLabel)
            make.bottom.equalTo(profileImageView.snp.bottom).offset(-5)
        }
    }
}


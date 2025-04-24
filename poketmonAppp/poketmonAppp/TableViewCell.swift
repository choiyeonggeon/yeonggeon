//
//  TableViewCell.swift
//  poketmonAppp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell{

    let userImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor.gray.cgColor
        image.layer.cornerRadius = 40
        return image
    }()

    let userName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()

    let userNum: UILabel = {
        let label = UILabel()
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }

    private func setupViews() {
        contentView.addSubview(userImage)
        contentView.addSubview(userName)
        contentView.addSubview(userNum)

        userImage.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.width.height.equalTo(80)
        }
        userName.snp.makeConstraints {
            $0.leading.equalTo(userImage.snp.leading).offset(100)
            $0.centerY.equalTo(userImage.snp.centerY)
            $0.width.height.equalTo(80)
        }
        userNum.snp.makeConstraints {
            $0.leading.equalTo(userName.snp.leading).offset(100)
            $0.centerY.equalTo(userImage.snp.centerY)
            $0.width.equalTo(200)
        }

    }
}

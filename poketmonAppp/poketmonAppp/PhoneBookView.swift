//
//  PhoneBookViewController.swift
//  poketmonAppp
//
//  Created by 최영건 on 4/23/25.
//



import UIKit
import SnapKit

class PhoneBookViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "연락처 추가"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = UIColor.black
        return label
    }()

    let profileImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.borderWidth = 1
        image.layer.borderColor = UIColor.gray.cgColor
        image.layer.cornerRadius = 40
        return image
    }()

    let randomImageBtn: UIButton = {
        let button = UIButton()
        return button
    }()

    let profileName: UITextView = {
        let name = UITextView()
        return name
    }()

    let profilePhNum: UITextView = {
        let PhNum = UITextView()
        return PhNum
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(titleLabel)
        view.addSubview(profileImage)
        view.addSubview(randomImageBtn)
        view.addSubview(profileName)
        view.addSubview(profilePhNum)
    }
}

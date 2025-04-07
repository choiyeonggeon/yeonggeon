//
//  ViewController.swift
//  cauculator1
//
//  Created by 최영건 on 4/2/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    var displayLabel: UILabel! // 계산식 나오는 라벨
    
    // 버튼 객체 만들기
    var button7: UIButton = UIButton() // 버튼
    var button8: UIButton = UIButton() // 버튼
    var button9: UIButton = UIButton() // 버튼
    var buttonPlus: UIButton = UIButton() // 버튼
    
    var button4: UIButton = UIButton()
    var button5: UIButton = UIButton()
    var button6: UIButton = UIButton()
    var buttonMinus: UIButton = UIButton()
    
    var button1: UIButton = UIButton()
    var button2: UIButton = UIButton()
    var button3: UIButton = UIButton()
    var buttonX: UIButton = UIButton()
    
    var buttonAC: UIButton = UIButton()
    var button0: UIButton = UIButton()
    var buttonEqual: UIButton = UIButton()
    var buttonDivide: UIButton = UIButton()
    
    // 스택뷰 객체 만들기
    var stackView: UIStackView = UIStackView()
    var stackView1: UIStackView = UIStackView()
    var stackView2: UIStackView = UIStackView()
    var stackView3: UIStackView = UIStackView()
    
    var currentInput: String = "" // 현재 입력값
    var previousInput: String = "" // 이전 입력값
    var operation: String? // 연산자
    var isTypingNumber: Bool = false // 숫자가 입력되고 있는지 확인
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI 초기화
        setupUI()
    }
    func setupUI() {
        view.backgroundColor = .black
        
        displayLabel = UILabel()
        displayLabel.text = "0"
        displayLabel.textAlignment = .right
        displayLabel.textColor = .white
        displayLabel.font = .boldSystemFont(ofSize: 45)
        view.addSubview(displayLabel)
        
        displayLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(200)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(30)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(30)
            $0.height.equalTo(80)
        }
        
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        
        stackView1.axis = .horizontal
        stackView1.backgroundColor = .black
        stackView1.spacing = 10
        stackView1.distribution = .fillEqually
        view.addSubview(stackView1)
        
        stackView2.axis = .horizontal
        stackView2.backgroundColor = .black
        stackView2.spacing = 10
        stackView2.distribution = .fillEqually
        view.addSubview(stackView2)
        
        stackView3.axis = .horizontal
        stackView3.backgroundColor = .black
        stackView3.spacing = 10
        stackView3.distribution = .fillEqually
        view.addSubview(stackView3)
        
        
        stackView.snp.makeConstraints {
            $0.top.equalTo(displayLabel.snp.bottom).inset(-30)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(30)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(30)
            $0.height.equalTo(80)
            
        }
        
        stackView1.snp.makeConstraints {
            $0.top.equalTo(stackView.snp.bottom).inset(-10)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(30)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(30)
            $0.height.equalTo(80)
            
        }
        
        stackView2.snp.makeConstraints {
            $0.top.equalTo(stackView1.snp.bottom).inset(-10)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(30)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(30)
            $0.height.equalTo(80)
            
        }
        
        stackView3.snp.makeConstraints {
            $0.top.equalTo(stackView2.snp.bottom).inset(-10)
            $0.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).inset(30)
            $0.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(30)
            $0.height.equalTo(80)
            
        }
        
        
        
        func setupButton(_ button: UIButton, title: String, backgroundColor: UIColor) {
            button.setTitle(title, for: .normal)
            button.layer.cornerRadius = 40
            button.titleLabel?.font = .boldSystemFont(ofSize: 30)
            button.backgroundColor = backgroundColor
            
        }
        

        let darkGray = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        let orange = UIColor.orange
        
        
        let buttons: [(UIButton, String, UIColor)] = [
            (button7, "7", darkGray), (button8, "8", darkGray), (button9, "9", darkGray), (buttonPlus, "+", orange),
            (button4, "4", darkGray), (button5, "5", darkGray), (button6, "6", darkGray), (buttonMinus, "-", orange),
            (button1, "1", darkGray), (button2, "2", darkGray), (button3, "3", darkGray), (buttonX, "*", orange),
            (buttonAC, "AC", orange), (button0, "0", darkGray), (buttonEqual, "=", orange), (buttonDivide, "/", orange)
        ]
        
        buttons.forEach { setupButton($0.0, title: $0.1, backgroundColor: $0.2) }
        
        [button7, button8, button9, buttonPlus].forEach { stackView.addArrangedSubview($0) }
        [button4, button5, button6, buttonMinus].forEach { stackView1.addArrangedSubview($0) }
        [button1, button2, button3, buttonX].forEach { stackView2.addArrangedSubview($0) }
        [buttonAC, button0, buttonEqual, buttonDivide].forEach { stackView3.addArrangedSubview($0) }
       }
    }

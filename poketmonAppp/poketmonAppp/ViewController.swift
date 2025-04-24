//
//  ViewController.swift
//  poketmonAppp
//
//  Created by 최영건 on 4/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation Controller 생성
        let navigationController = UINavigationController(rootViewController: self)
        
        // UINavigationBar 배경색상 설정
        navigationController.navigationBar.barTintColor = UIColor.blue
        
        // UINavigationBar 제목 설정
        navigationController.navigationBar.topItem?.title = "Main Screen"
        

        // Navigation Controller 생성
        let navigationController = UINavigationController(rootViewController: self)
        // 현재 ViewController를 rootViewController로 설정

        // Navigation Controller를 화면에 표시
        UIApplication.shared.windows.first?.rootViewController = navigationController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}

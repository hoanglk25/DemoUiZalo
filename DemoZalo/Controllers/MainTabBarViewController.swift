//
//  MainTabBarViewController.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .label
        
        let vc1 = UINavigationController(rootViewController: MessageViewController())
        let vc2 = UINavigationController(rootViewController: ContactViewController())
        let vc3 = UINavigationController(rootViewController: ExtensionViewController())
        let vc4 = UINavigationController(rootViewController: DiaryViewController())
        let vc5 = UINavigationController(rootViewController: UserViewController())
        
        vc1.title = "Tin nhắn"
        vc2.title = "Danh bạ"
        vc3.title = "Tiện ích"
        vc4.title = "Nhật Ký"
        vc5.title = "Cá nhân"
        
        vc1.tabBarItem.image = UIImage(systemName: "ellipsis.message")
        vc2.tabBarItem.image = UIImage(systemName: "list.dash.header.rectangle")
        vc3.tabBarItem.image = UIImage(systemName: "puzzlepiece.extension")
        vc4.tabBarItem.image = UIImage(systemName: "clock")
        vc5.tabBarItem.image = UIImage(systemName: "person")
        
        tabBar.tintColor = .blue
        
        setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: true)

    }
    

   
}

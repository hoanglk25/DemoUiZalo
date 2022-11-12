//
//  UserViewController.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import UIKit

class UserViewController: UIViewController {
    let avatarImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: "hoang")
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Đức Hoàng"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpUser()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width/2
        avatarImageView.clipsToBounds = true
    }
        func setUpUser() {
        view.addSubview(avatarImageView)
        avatarImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        avatarImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor, multiplier: 1).isActive = true
            
        view.addSubview(nameLabel)
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant:30).isActive = true
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }

    
}

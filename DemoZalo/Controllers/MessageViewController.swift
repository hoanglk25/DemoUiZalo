//
//  ViewController.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import UIKit

class MessageViewController: UIViewController {
   
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        return table
    }()
    var containers: [ContainerMessages] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        containers = fetch()
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "MessageTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MessageTableViewCell")

        view.addSubview(tableView)
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

}
extension MessageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("open message")
    }
    
}
extension MessageViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return containers.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return containers[section].messages.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = containers[indexPath.section].messages[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        cell.nameLabel.text = message.name
        cell.detailLabel.text = message.detailMessage
        cell.timeLable.text = message.time
        cell.avatarImageView.image = UIImage(named: message.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title: "Xoá") { context, view, closure in
            self.containers[indexPath.section].messages.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
        deleteAction.backgroundColor = .red
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return configuration
    }
}


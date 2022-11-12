//
//  DiaryViewController.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import UIKit

class DiaryViewController: UIViewController {
    var containers:[ContainerDiary] = []
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        containers = fakeData()
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: "DiaryTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DiaryTableViewCell")
        view.addSubview(tableView)

       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}
extension DiaryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return print("Story")
    }
}
extension DiaryViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return containers.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return containers[section].diaries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let diary = containers[indexPath.section].diaries[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiaryTableViewCell", for: indexPath) as! DiaryTableViewCell
        cell.avatarImage.image = UIImage(named: diary.avatar)
        cell.nameLabel.text = diary.name
        cell.timeLabel.text = diary.time
        cell.contentImageView.image = UIImage(named: diary.contentImage)
        cell.textView.text = diary.content
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}

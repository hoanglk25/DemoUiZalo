//
//  ExtensionViewController.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import UIKit

class ExtensionViewController: UIViewController {
    var containers:[ContainersExtension] = []
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 150, height: 150)
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        containers = fetchData()
        view.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nib = UINib(nibName: "ExtensionCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ExtensionCollectionViewCell")
        view.addSubview(collectionView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}
extension ExtensionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        return print("Open extension")
    }
}
extension ExtensionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return containers.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return containers[section].extensions.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let extensions = containers[indexPath.section].extensions[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExtensionCollectionViewCell", for: indexPath) as! ExtensionCollectionViewCell
        cell.imageView.image = UIImage(systemName: extensions.imageView)
        cell.extensionDetail.text = extensions.detailExtension
        return cell
    }
}


//
//  ContactTableViewCell.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    
    var passAction: (() -> Void)?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeCircle()
        
    }
    
    var contact: Contact? {
        didSet {
            if let contact = contact {
                avatarImageView.image = UIImage(named: contact.avatarImage)
                nameLabel.text = contact.name
                phoneButton.setImage(UIImage(systemName: contact.isSelectPhone ? "phone.fill" : "phone"), for: .normal)
                videoButton.setImage(UIImage(systemName: contact.isSelectVideo ? "video.fill" : "video"), for: .normal)
            }
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func makeCircle() {
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width/2
    }
    
    @IBAction func videoAction(_ sender: Any) {
        if videoButton.currentImage == UIImage(systemName: "video") {
            videoButton.setImage(UIImage(systemName: "video.fill"), for: .normal)
        } else {
            videoButton.setImage(UIImage(systemName: "video"), for: .normal)
        }

        if videoButton.currentImage == UIImage(systemName: "video.fill") {
            phoneButton.setImage(UIImage(systemName: "phone"), for: .normal)
        }
        
     
    }
    @IBAction func callAction(_ sender: Any) {
        if phoneButton.currentImage == UIImage(systemName: "phone") {
            phoneButton.setImage(UIImage(systemName: "phone.fill"), for: .normal)
        } else {
            phoneButton.setImage(UIImage(systemName: "phone"), for: .normal)
        }
        
        if phoneButton.currentImage == UIImage(systemName: "phone.fill") {
            videoButton.setImage(UIImage(systemName: "video"), for: .normal)
        }
    }
}

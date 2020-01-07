//
//  CustomCell.swift
//  TableViewCustom_23
//
//  Created by Thiện Tùng on 1/6/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
       // view.backgroundColor = .brown
        
        return view
    } ()
    
    var avt: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
       // img.backgroundColor = .green
        img.layer.cornerRadius = 32
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        
        return img
    } ()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 18)
        //label.backgroundColor = .yellow
        
        return label
    } ()
    var phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
      //  label.backgroundColor = .red
        
        return label
    } ()

    var item: Item? {
        didSet {
            if let data = item {
                avt.image = UIImage(named: data.avt)
                nameLabel.text = data.nameUser
                phoneLabel.text = data.phoneNumber
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
        self.addSubview(containerView)
        containerView.addSubview(avt)
        containerView.addSubview(nameLabel)
        containerView.addSubview(phoneLabel)
        setupLayout()
        
        
    }
    
    func setupLayout(){
        //ContainerView
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        //AVT
        avt.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 4).isActive = true
        avt.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 4).isActive = true
        avt.heightAnchor.constraint(equalToConstant: 64).isActive = true
        avt.widthAnchor.constraint(equalToConstant: 64).isActive = true
        //NameLabel
        nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: avt.rightAnchor, constant: 16).isActive = true
        
        //PhoneLabel
        phoneLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 14).isActive = true
        phoneLabel.leftAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: 0).isActive = true
        phoneLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8).isActive = true
        phoneLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8).isActive = true
        
    }

}

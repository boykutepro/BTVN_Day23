//
//  AddNewItem.swift
//  TableViewCustom_23
//
//  Created by Thiện Tùng on 1/7/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class AddNewItem: UIViewController {
    
    let nameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name:"
        return label
    } ()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Phone:"
        return label
    } ()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .alphabet
        textField.backgroundColor = .white
        
        return textField
    } ()
    
    let phoneTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .numberPad
        textField.backgroundColor  = .white
        
        return textField
    } ()
    
    let selectButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Select Photo", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel!.font = UIFont.systemFont(ofSize: 13)
        
        return button
    } ()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Add Item", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        button.setTitleColor(.blue, for: .normal)
        
        return button
    } ()
    
    let imageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .white
        
        return img
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Create Item"
        
        view.addSubview(nameLable)
        view.addSubview(nameTextField)
        view.addSubview(phoneLabel)
        view.addSubview(phoneTextField)
        view.addSubview(selectButton)
        view.addSubview(imageView)
        view.addSubview(addButton)
        
        setupLayout()
        
        addButton.addTarget(self, action: #selector(addItem), for: .touchUpInside)
    }
    
    @objc func addItem(){
        
        items.append(Item(avt: "husky2", nameUser: nameLable.text!, phoneNumber: phoneLabel.text!))
        
        navigationController?.popViewController(animated: true)
    }
    
    func setupLayout(){
        //
        nameLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        nameLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 64).isActive = true
    
        phoneLabel.topAnchor.constraint(equalTo: nameLable.bottomAnchor, constant: 24).isActive = true
        phoneLabel.leftAnchor.constraint(equalTo: nameLable.leftAnchor, constant: 0).isActive = true
        //
        nameTextField.topAnchor.constraint(equalTo: nameLable.topAnchor, constant: 0).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: nameLable.rightAnchor, constant: 32).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 230).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: nameLable.heightAnchor, multiplier: 1).isActive = true
        //
        phoneTextField.topAnchor.constraint(equalTo: phoneLabel.topAnchor, constant: 0).isActive = true
        phoneTextField.leftAnchor.constraint(equalTo: nameTextField.leftAnchor, constant: 0).isActive = true
        phoneTextField.rightAnchor.constraint(equalTo: nameTextField.rightAnchor, constant: 0).isActive = true
        phoneTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor, multiplier: 1).isActive = true
        //
        selectButton.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 32).isActive = true
        selectButton.leftAnchor.constraint(equalTo: phoneLabel.leftAnchor, constant: 0).isActive = true
        //
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 256).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 256).isActive = true
        //
        addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        addButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 32).isActive = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

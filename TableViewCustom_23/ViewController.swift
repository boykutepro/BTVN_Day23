//
//  ViewController.swift
//  TableViewCustom_23
//
//  Created by Thiện Tùng on 1/6/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    } ()
    
    let idCell: String = "Cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "List Item"
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setupData()
        setupLayout()
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: idCell)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
    }
    @objc func addItem () {
        let addItemVC = AddNewItem()
        navigationController?.pushViewController(addItemVC, animated: true)
    }

    func setupData(){
        
        //let item1 = Item(avt: "husky2", nameUser: "Tùng Vũ Thiện ", phoneNumber: "0583397644")
        
        //items = [item1]
    }
    
    func setupLayout(){
        //MARK: TableView
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    
}


extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath) as! CustomCell
        cell.item = items[indexPath.row]
        
        return cell
    }
}

//
//  ShowMoreVC.swift
//  click
//
//  Created by Sardor Panjiyev on 17/11/22.
//

import UIKit

class ShowMoreVC: UIViewController {
    
@IBOutlet weak var poiskview: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var poiskTF: UITextField!
    var tableArr : [TableViewDM] = [
        TableViewDM(title: "Sunrise", location: "улица Саракульска,2-проезд дом 5 2-проезд дом 5 ", distance: "23", img: "image-1"),
        TableViewDM(title: "Ramazon market", location: "улица Саракульска,2-проезд дом 5 Саракульска", distance: "66", img: "image-2"),
        TableViewDM(title: "Osiyo meal", location: "улица Саракульска,2-проезд дом 8 ", distance: "50", img: "image-3"),
        TableViewDM(title: "Donco xleb", location: "улица Саракульска,2-проезд дом 5 ", distance: "76", img: "image-4"),
        TableViewDM(title: "Fruit market", location: "улица Саракульска,2-проезд дом 5 ", distance: "250", img: "image-5"),
        TableViewDM(title: "Octankino", location: "улица Саракульска,2-проезд дом 5 ", distance: "123", img: "image-6"),
        TableViewDM(title: "Vegetables", location: "улица Саракульска,2-проезд дом 5 ", distance: "98", img: "image-7"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Рядом"
        
        
        setUpTableView()
        
    }
    
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ShowMoreTVC.nib(), forCellReuseIdentifier: ShowMoreTVC.id)
        poiskview.layer.borderWidth = 1
        poiskview.layer.borderColor = UIColor.systemGray2.cgColor

    }

    

   
    
    

}

extension ShowMoreVC : UITableViewDelegate {
    
}

extension ShowMoreVC : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ShowMoreTVC.id, for: indexPath) as? ShowMoreTVC else {return UITableViewCell()}
        cell.updateTableView(info: tableArr[indexPath.row])
        return cell
    }
    
}
